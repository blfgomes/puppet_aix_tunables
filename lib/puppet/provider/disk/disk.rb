Puppet::Type.type(:disk).provide :disk do
  confine :operatingsystem => :AIX
  commands :lsattr => 'lsattr'
  commands :chdev  => 'chdev'
  commands :lsdev  => 'lsdev'

  mk_resource_methods
  
  def self.create_attr_hash(attr_lines)
    attr_hash = {}
    attr_lines.each do |line|
      line =~ /^(\w+)\s+(\w+)/
      attr_hash[$1.to_sym] = $2 
    end
    return attr_hash
  end

  def self.instances
    disks = lsdev('-Cc', 'disk').split("\n").collect do |line|
      line.split(/\s+/)[0]
    end
    disks.collect do |disk|
      attr_lines = lsattr('-El', disk).split("\n")
      attr_hash = create_attr_hash(attr_lines)
      attr_hash[:name] = disk
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

  def set_attr(attr, value)
    chdev('-l', resource[:name], '-a', "#{attr}=#{value}")
    @property_hash[attr.to_sym] = value
  end

  def queue_depth=(value)
    set_attr('queue_depth', value)
  end

end 
