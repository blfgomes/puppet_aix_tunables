require 'puppet/type/aix_tunables_util'
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

  include Tunables_Util
end
