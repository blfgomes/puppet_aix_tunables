Puppet::Type.newtype(:disk) do

  newparam(:name, :namevar => true) do
    desc "Name of hdisk"
  end

  newproperty(:algorithm) do
  end

  newproperty(:hcheck_cmd) do
  end

  newproperty(:hcheck_mode) do
  end

  newproperty(:max_transfer) do
  end
  
  newproperty(:pvid, :readonly => true) do
  end

  newproperty(:queue_depth) do
  end

  newproperty(:reserve_policy) do
  end

end
