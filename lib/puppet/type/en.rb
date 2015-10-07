Puppet::Type.newtype(:en) do

  newparam(:name, :namevar => true) do
    desc "Name of Standard Ethernet Network Interface"
  end

  newproperty(:alias4) do
  end

  newproperty(:alias6) do
  end

  newproperty(:arp) do
  end

  newproperty(:authority) do
  end

  newproperty(:broadcast) do
  end

  newproperty(:monitor) do
  end

  newproperty(:mtu) do
  end

  newproperty(:mtu_bypass) do
  end

  newproperty(:netaddr) do
  end

  newproperty(:netaddr6) do
  end

  newproperty(:netmask) do
  end

  newproperty(:prefixlen) do
  end

  newproperty(:remmtu) do
  end

  newproperty(:rfc1323) do
  end

  newproperty(:security) do
  end

  newproperty(:state) do
  end

  newproperty(:tcp_mssdflt) do
  end

  newproperty(:tcp_nodelay) do
  end

  newproperty(:tcp_recvspace) do
  end

  newproperty(:tcp_sendspace) do
  end

  newproperty(:thread) do
  end

  newparam(:device_in_use) do
    defaultto :true
    newvalues(:true, :false)
  end

  newparam(:reboot_notify_cmd) do
  end

end
