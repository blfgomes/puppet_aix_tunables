Puppet::Type.newtype(:p_ent) do

  newparam(:name, :namevar => true) do
    desc "Name of Physical Ethernet Adapter"
  end

  newproperty(:XtraIntr) do
  end

  newproperty(:alt_addr) do
  end

  newproperty(:chksum_offload) do
  end

  newproperty(:compat_mode) do
  end

  newproperty(:copy_bytes) do
  end

  newproperty(:delay_open) do
  end

  newproperty(:failback) do
  end

  newproperty(:failback_delay) do
  end

  newproperty(:failover) do
  end

  newproperty(:flow_ctrl) do
  end

  newproperty(:intr_rate) do
  end

  newproperty(:jumbo_frames) do
  end

  newproperty(:large_send) do
  end

  newproperty(:link_up_timer) do
  end

  newproperty(:media_speed) do
  end

  newproperty(:rx_hog) do
  end

  newproperty(:rxbuf_pool_sz) do
  end

  newproperty(:rxdesc_que_sz) do
  end

  newproperty(:slih_hog) do
  end

  newproperty(:tx_que_sz) do
  end

  newproperty(:txdesc_que_sz) do
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
