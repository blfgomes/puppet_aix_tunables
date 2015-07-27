require 'puppet/type/aix_tunables_util'

Puppet::Type.newtype(:nfso) do

  newparam(:name, :namevar => true) do
    desc "Name of tunable"
  end

  newproperty(:client_delegation) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:nfs_max_read_size) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:nfs_max_write_size) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:nfs_rfc1323) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:nfs_securenfs_authtimeout) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:nfs_server_base_priority) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:nfs_server_clread) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:nfs_use_reserved_ports) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:nfs_v3_server_readdirplus) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:nfs_v4_fail_over_timeout) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:portcheck) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:server_delegation) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:utf8_validation) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  include Tunables_Util
end
