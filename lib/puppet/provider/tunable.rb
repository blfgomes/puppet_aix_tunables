require 'puppet/tunable_property'

class Puppet::Provider::Tunable < Puppet::Provider
  confine :operatingsystem => :AIX

  def self.instances
    tunable = @commands[:cmd]
    attr_hash = {:name => tunable}
    self.instances_hash.each do |name, tunable_obj|
      attr_hash[name.to_sym] = tunable_obj.current
    end
    [new(attr_hash)]
  end

  def self.instances_hash
    instances_hash = {}
    begin
      instances_hash = class_variable_get(:@@instances_hash)
    rescue 
      #self.instances
      cmd('-x').split("\n").each do |line|
	line_array = line.split(',')
	name, current, default = line_array[0..3]
	type = line_array[-2]
	name.sub!(/%$/, '_p')
	instances_hash[name] = TunableProperty.new(name, current, default, type)
      end
      class_variable_set(:@@instances_hash, instances_hash)
    end
    instances_hash
  end

  def flush
    cmd_properties = []
    instances_hash = self.class.instances_hash
    resource.to_hash.each do |attr, value|
      next if ! self.class.resource_type.validproperties.include? attr
      attr_str = attr.to_s
      attr_str.sub!(/_p$/, '%')
      cmd_properties << ['-o', "#{attr_str}=#{value}"]
    end
    begin
      output = cmd(cmd_properties)
      if output =~ /is not supported/ then
        raise Puppet::ExecutionFailure, output
      end
    rescue Puppet::ExecutionFailure => e
      @property_hash = {}
      raise Puppet::Error, "Error -> #{e.inspect}"
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
