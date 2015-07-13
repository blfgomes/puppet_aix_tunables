class Puppet::Provider::Tunable < Puppet::Provider

  def set_value(resource_name, v)
    cmd('-o', "#{resource_name}=#{v}")
    @property_hash[:value] = v
  end

  def self.instances
    tunables = cmd('-a').split("\n")
    tunables.collect do |line|
      line =~ /([\w%]+) = (-*\d+|n\/a|{\w*})/
      name, value = $1, $2
      new(:name  => name, :value => value)
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
