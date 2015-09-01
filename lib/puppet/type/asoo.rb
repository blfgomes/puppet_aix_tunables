Puppet::Type.newtype(:asoo) do

  newparam(:name, :namevar => true) do
    desc "Name of tunable"
  end

  newproperty(:aso_active) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:debug_level) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newparam(:enforce_default) do
    defaultto false
    newvalues(:true, :false)
  end

  validate do
    if self[:enforce_default] == :true then
      self.class.properties.each do |property|
        if self[property.name].nil? then
          self[property.name] = 'default'
        end
      end
    end
  end

  def munge_default(name, value)
    if value == 'default' then
      instances_hash = provider.class.instances_hash
      # Do not try to set 'n/a' values to default, since they are
      # unsupported.
      if instances_hash[name.to_s].current == 'n/a' then
        'n/a'
      else
        instances_hash[name.to_s].default
      end
    else
      value
    end
  end

end
