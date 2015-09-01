Puppet::Type.newtype(:ioo) do

  newparam(:name, :namevar => true) do
    desc "Name of tunable"
  end

  newproperty(:aio_maxreqs) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end
  newproperty(:aio_maxservers) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:aio_minservers) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:aio_server_inactivity) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:j2_atimeUpdateSymlink) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:j2_dynamicBufferPreallocation) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:j2_inodeCacheSize) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:j2_maxPageReadAhead) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:j2_maxRandomWrite) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:j2_metadataCacheSize) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:j2_minPageReadAhead) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:j2_nPagesPerWriteBehindCluster) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:j2_nRandomCluster) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:j2_recoveryMode) do
    munge do |value|
      puts value
      @resource.munge_default(name, value)
    end
  end

  newproperty(:j2_syncPageCount) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:j2_syncPageLimit) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:lvm_bufcnt) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:maxpgahead) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:maxrandwrt) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:numclust) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:numfsbufs) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:pd_npages) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:posix_aio_active) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:posix_aio_maxreqs) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:posix_aio_maxservers) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:posix_aio_minservers) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:posix_aio_server_inactivity) do
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
