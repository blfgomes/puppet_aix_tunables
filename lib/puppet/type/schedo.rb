Puppet::Type.newtype(:schedo) do

  newparam(:name, :namevar => true) do
    desc "Name of tunable"
  end

  newproperty(:affinity_lim) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:big_tick_size) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:ded_cpu_donate_thresh) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:fixed_pri_global) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:force_grq) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:maxspin) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:pacefork) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:proc_disk_stats) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:sched_D) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:sched_R) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:tb_balance_S0) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:tb_balance_S1) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:tb_threshold) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:timeslice) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:vpm_fold_policy) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:vpm_throughput_core_threshold) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:vpm_throughput_mode) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:vpm_xvcpus) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newparam(:enforce_default) do
    defaultto false
    newvalues(:true, :false)
  end

  newparam(:reboot_notify_cmd) do
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
