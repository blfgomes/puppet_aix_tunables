require 'puppet/tunable_property'

class Puppet::Provider::Tunable < Puppet::Provider
  confine :operatingsystem => :AIX

  def self.instances
    tunable = @commands[:cmd]
    attr_hash = {:name => tunable}
    self.instances_hash.each do |name, tunable_obj|
      if ['R', 'B'].include? tunable_obj.type and tunable_obj.current != 'n/a' then
        attr_hash[name.to_sym] = tunable_obj.reboot
      else
        attr_hash[name.to_sym] = tunable_obj.current
      end 
    end
    [new(attr_hash)]
  end

  def self.instances_hash
    instances_hash = {}
    begin
      instances_hash = class_variable_get(:@@instances_hash)
    rescue 
      cmd('-x').split("\n").each do |line|
	line_array = line.split(',', -1)
	name, current, default, reboot = line_array[0..4]
	type = line_array[-2]
	name.sub!(/%$/, '_p')
	instances_hash[name.downcase] = TunableProperty.new(name, current, default, reboot, type)
      end
      class_variable_set(:@@instances_hash, instances_hash)
    end
    instances_hash
  end

  def cmdline(type)
    filter = case type
      when "reboot" 
        cmd_flags = ['-r', '-y']
        current = 'reboot'
        ['R', 'B']
      when "dynamic" 
        cmd_flags = ['-p']
        current = 'current'
        ['D', 'M', 'I', 'C']
      else return []
    end
    cmd_properties = []
    instances_hash = self.class.instances_hash
    resource.to_hash.each do |attr, value|
      next if ! self.class.resource_type.validproperties.include? attr
      # Properties in self.class.resource are stored lowercase while Kernel
      # tunables in AIX are case sensitive.
      # We should use the original name stored in TunableProperty.@name
      property = instances_hash[attr.to_s]
      if property.send(current) != value and property.current != 'n/a' and \
         filter.include? property.type then
	attr_str = property.name
	attr_str.sub!(/_p$/, '%')
	cmd_properties << ['-o', "#{attr_str}=#{value}"]
      end
    end
    if !cmd_properties.empty? then
      return cmd_flags + cmd_properties
    else
      return []
    end
  end

  def flush
    [cmdline('reboot'), cmdline('dynamic')].each do |command|
      begin
	next if command.empty? 
	output = cmd(command)
	if output =~ /is not supported/ then
	  raise Puppet::ExecutionFailure, output
	end
      rescue Puppet::ExecutionFailure => e
	@property_hash = {}
	raise Puppet::Error, "Error -> #{e.inspect}"
      end
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
