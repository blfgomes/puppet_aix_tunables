require 'puppet/type/aix_tunables_util'
Puppet::Type.newtype(:vmo) do

  newparam(:name, :namevar => true) do
  end

  newproperty(:ame_cpus_per_pool) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:ame_maxfree_mem) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:ame_min_ucpool_size) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:ame_minfree_mem) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:ams_loan_policy) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:enhanced_affinity_affin_time) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:enhanced_affinity_vmpool_limit) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:esid_allocator) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:force_relalias_lite) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:kernel_heap_psize) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:lgpg_regions) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:lgpg_size) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:low_ps_handling) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:maxfree) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:maxpin_p) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:memplace_data) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:memplace_mapped_file) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:memplace_shm_anonymous) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:memplace_shm_named) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:memplace_stack) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:memplace_text) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:memplace_unmapped_file) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:minfree) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:minperm_p) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:nokilluid) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:npskill) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:npswarn) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:num_locks_per_semid) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:relalias_percentage) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:scrub) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:thrpgio_inval) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:thrpgio_npages) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:v_pinshm) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:vmm_default_pspa) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:vmm_klock_mode) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:wlm_memlimit_nonpg) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  include Tunables_Util
end
