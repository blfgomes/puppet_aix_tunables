require 'puppet/provider/tunable'

Puppet::Type.type(:vmo).provide :vmo do
  confine :operatingsystem => :AIX
  commands :vmo => 'vmo'

  mk_resource_methods

  def self.instances
    defaults = {}
    attr_hash = {:name => 'vmo'}
    vmo('-x').split("\n").each do |line|
      name, value, default = line.split(',')[0..3]
      name.sub!(/%$/, '_p')
      attr_hash[name.to_sym] = value
      defaults[name] = default
    end
    class_variable_set(:@@defaults, defaults)
    [new(attr_hash)]
  end

  def self.defaults
    begin
      defaults = class_variable_get(:@@defaults)
    rescue 
      self.instances
      defaults = class_variable_get(:@@defaults)
    end
    defaults
  end

  def flush
    vmo_properties = []
    defaults = self.class.defaults
    resource.to_hash.each do |attr, value|
      next if ! self.class.resource_type.validproperties.include? attr
      attr_str = attr.to_s
      if value == 'default' then
        value = defaults[attr_str]
      end
      attr_str.sub!(/_p$/, '%')
      vmo_properties << ['-o', "#{attr_str}=#{value}"]
    end
    begin
        vmo(vmo_properties)
    rescue Puppet::ExecutionFailure => e
      @property_hash = {}
      raise Puppet::Error, "vmo had an error -> #{e.inspect}"
    end
  end

  def self.prefetch(resources)
    instances.each do |prov|
      if resource = resources[prov.name]
        resource.provider = prov
      end
    end
  end


end 
