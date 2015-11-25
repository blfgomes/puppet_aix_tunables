require 'puppet/aix_notify'
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
      # Tries to make an online change
      begin
	chdev('-l', resource[:name], options)
        debug("Online change successful")
      rescue Puppet::ExecutionFailure => e
        # Tries to change only the CuDev database (-P) if device_in_use parameter == :true
        debug("Could not make an online change")
        if resource[:device_in_use] == :true
          debug("device_in_use == :true, trying to change the CuDev database only (-P)")
	  chdev('-l', resource[:name], options, '-P')
          debug("Offline change successful")
	  reboot_notify_cmd = resource[:reboot_notify_cmd]
	  if (reboot_notify_cmd.to_s != '')
            debug("reboot_notify_cmd set, running command")
	    RebootNotify.exec(resource[:reboot_notify_cmd]) 
	  end
        end
      end
    rescue Puppet::ExecutionFailure => e
      @property_hash = {}
      raise Puppet::Error, "chdev had an error -> #{e.inspect}"
    end
  end

end
