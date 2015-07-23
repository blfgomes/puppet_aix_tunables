require 'puppet/provider/tunable'

Puppet::Type.type(:vmo).provide :vmo do
  confine :operatingsystem => :AIX
  commands :vmo => 'vmo'

  mk_resource_methods

  def self.instances
    attr_hash = {:name => 'vmo'}
    vmo('-x').split("\n").each do |line|
      name, value = line.split(',')[0..1]
      name.sub!(/%$/, '_p')
      attr_hash[name.to_sym] = value
    end
    [new(attr_hash)]
  end

  def flush
    vmo_properties = []
    resource.to_hash.each do |attr, value|
      next if ! self.class.resource_type.validproperties.include? attr
      attr_str = attr.to_s.sub(/_p$/, '%')
      vmo_properties << ['-o', "#{attr_str}=#{value}"]
    end
    begin
        vmo(vmo_properties)
    rescue Puppet::ExecutionFailure => e
      @property_hash = {}
      raise Puppet::Error, "vmo had an error -> #{e.inspect}"
    end
  end


end 
