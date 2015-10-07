Puppet::Type.newtype(:ent) do

  newparam(:name, :namevar => true) do
    desc "Name of Virtual Ethernet Adapter"
  end

  newproperty(:alt_addr) do
  end

  newproperty(:chksum_offload) do
  end

  newproperty(:copy_buffs) do
  end

  newproperty(:copy_bytes) do
  end

  newproperty(:max_buf_huge) do
  end

  newproperty(:max_buf_large) do
  end

  newproperty(:max_buf_medium) do
  end

  newproperty(:max_buf_small) do
  end

  newproperty(:max_buf_tiny) do
  end

  newproperty(:min_buf_huge) do
  end

  newproperty(:min_buf_large) do
  end

  newproperty(:min_buf_medium) do
  end

  newproperty(:min_buf_small) do
  end

  newproperty(:min_buf_tiny) do
  end

  newproperty(:trace_debug) do
  end

  newproperty(:use_alt_addr) do
  end

  newparam(:device_in_use) do
    defaultto :true
    newvalues(:true, :false)
  end

  newparam(:reboot_notify_cmd) do
  end

end
