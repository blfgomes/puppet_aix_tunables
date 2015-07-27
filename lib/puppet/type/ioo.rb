require 'puppet/type/aix_tunables_util'

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

  include Tunables_Util
end
