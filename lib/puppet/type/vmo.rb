Puppet::Type.newtype(:vmo) do

  newparam(:name, :namevar => true) do
  end

  #TODO implementar numperm_global
  #
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
