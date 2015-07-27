require 'puppet/type/aix_tunables_util'

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

  include Tunables_Util

end
