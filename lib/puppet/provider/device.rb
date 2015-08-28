class Puppet::Provider::Device < Puppet::Provider
  confine :operatingsystem => :AIX

  def self.create_attr_hash(attr_lines)
    attr_hash = {}
    attr_lines.each do |line|
      attribute, value = line.split(',')
      attr_hash[attribute.to_sym] = value
    end
    return attr_hash
  end

  def self.instances
    devices = lsdev(self.lsdev_cmd).split("\n").collect do |line|
      line.split(/\s+/)[0]
    end
    devices.collect do |device|
      attr_lines = lsattr('-F', 'attribute,value', '-l', device).split("\n")
      attr_hash = create_attr_hash(attr_lines)
      attr_hash[:name] = device
      new(attr_hash)
    end
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
      if resource[:device_in_use] == :true
        chdev('-l', resource[:name], options, '-P')
      else
        chdev('-l', resource[:name], options)
      end
    rescue Puppet::ExecutionFailure => e
      @property_hash = {}
      raise Puppet::Error, "chdev had an error -> #{e.inspect}"
    end
  end

end
