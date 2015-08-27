Puppet::Type.type(:sys0).provide :sys0 do
  confine :operatingsystem => :AIX
  commands :lsattr => 'lsattr'
  commands :chdev  => 'chdev'
  commands :lsdev  => 'lsdev'

  mk_resource_methods
  
  def self.create_attr_hash(attr_lines)
    attr_hash = {}
    attr_lines.each do |line|
      attribute, value = line.split(',')
      attr_hash[attribute.to_sym] = value
    end
    return attr_hash
  end

  def self.instances
    attr_lines = lsattr('-F', 'attribute,value', '-l', 'sys0').split("\n")
    attr_hash = create_attr_hash(attr_lines)
    attr_hash[:name] = :sys0
    [new(attr_hash)]
  end

  def self.prefetch(resources)
    instances.each do |prov|
      if resource = resources[prov.name]
        resource.provider = prov
      end
    end
  end

  def flush
    options = []
    resource.to_hash.each do |attr, value|
      next if ! self.class.resource_type.validproperties.include? attr
      options << ['-a', "#{attr}=#{value}"] 
    end
    begin
	chdev('-l', resource[:name], options)
    rescue Puppet::ExecutionFailure => e
      @property_hash = {}
      raise Puppet::Error, "chdev had an error -> #{e.inspect}"
    end
  end

end 
