Puppet::Type.newtype(:vmo) do

  def munge_default(name, value)
      if value == 'default' then
	provider.class.defaults[name.to_s]
      else
        value
      end
  end

  newparam(:name, :namevar => true) do
  end

  newproperty(:ame_cpus_per_pool) do
  end

  newproperty(:ame_maxfree_mem) do
  end

  newproperty(:ame_min_ucpool_size) do
  end

  newproperty(:ame_minfree_mem) do
  end

  newproperty(:ams_loan_policy) do
  end

  newproperty(:enhanced_affinity_affin_time) do
  end

  newproperty(:enhanced_affinity_vmpool_limit) do
  end

  newproperty(:esid_allocator) do
  end

  newproperty(:force_relalias_lite) do
  end

  newproperty(:kernel_heap_psize) do
  end

  newproperty(:lgpg_regions) do
  end

  newproperty(:lgpg_size) do
  end

  newproperty(:low_ps_handling) do
  end

  newproperty(:maxfree) do
  end

  newproperty(:maxpin_p) do
  end

  newproperty(:memplace_data) do
  end

  newproperty(:memplace_mapped_file) do
  end

  newproperty(:memplace_shm_anonymous) do
  end

  newproperty(:memplace_shm_named) do
  end

  newproperty(:memplace_stack) do
  end

  newproperty(:memplace_text) do
  end

  newproperty(:memplace_unmapped_file) do
  end

  newproperty(:minfree) do
  end

  newproperty(:minperm_p) do
    munge do |value|
      @resource.munge_default(name, value)
      #puts name
      #if value == 'default' then
	#puts provider.class.defaults['minperm_p']
	#provider.class.defaults['minperm_p']
      #else
        #value
      #end
    end
  end

  newproperty(:nokilluid) do
  end

  newproperty(:npskill) do
  end

  newproperty(:npswarn) do
  end

  newproperty(:num_locks_per_semid) do
  end

  newproperty(:relalias_percentage) do
  end

  newproperty(:scrub) do
  end

  newproperty(:thrpgio_inval) do
  end

  newproperty(:thrpgio_npages) do
  end

  newproperty(:v_pinshm) do
  end

  newproperty(:vmm_default_pspa) do
  end

  newproperty(:vmm_klock_mode) do
  end

  newproperty(:wlm_memlimit_nonpg) do
  end

end
