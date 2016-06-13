Puppet::Type.newtype(:sys0) do

  newparam(:name, :namevar => true) do
    desc "Name of Standard Ethernet Network Interface"
  end

  newproperty(:autorestart) do 
  end

  newproperty(:chown_restrict) do 
  end

  newproperty(:clouddev) do 
  end

  newproperty(:cpuguard) do 
  end

  newproperty(:fullcore) do 
  end

  newproperty(:ghostdev) do 
  end

  newproperty(:iostat) do 
  end

  newproperty(:log_pg_dealloc) do 
  end

  newproperty(:max_logname) do 
  end

  newproperty(:maxbuf) do 
  end

  newproperty(:maxmbuf) do 
  end

  newproperty(:maxpout) do 
  end

  newproperty(:maxuproc) do 
  end

  newproperty(:minpout) do 
  end

  newproperty(:ncargs) do 
  end

  newproperty(:nfs4_acl_compat) do 
  end

  newproperty(:pre430core) do 
  end

  newproperty(:pre520tune) do 
  end

  newproperty(:sed_config) do 
  end

  newparam(:reboot_notify_cmd) do
  end

end
