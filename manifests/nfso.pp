# Class for nfso kernel tunable
class aix_tunables::nfso( $client_delegation         = undef,
                          $nfs_max_read_size         = undef,
                          $nfs_max_write_size        = undef,
                          $nfs_rfc1323               = undef,
                          $nfs_securenfs_authtimeout = undef,
                          $nfs_server_base_priority  = undef,
                          $nfs_server_clread         = undef,
                          $nfs_use_reserved_ports    = undef,
                          $nfs_v3_server_readdirplus = undef,
                          $nfs_v4_fail_over_timeout  = undef,
                          $portcheck                 = undef,
                          $server_delegation         = undef,
                          $utf8_validation           = undef,
                          $enforce_default           = undef,) {


  nfso {'nfso':
    client_delegation         => $client_delegation,
    nfs_max_read_size         => $nfs_max_read_size,
    nfs_max_write_size        => $nfs_max_write_size,
    nfs_rfc1323               => $nfs_rfc1323,
    nfs_securenfs_authtimeout => $nfs_securenfs_authtimeout,
    nfs_server_base_priority  => $nfs_server_base_priority,
    nfs_server_clread         => $nfs_server_clread,
    nfs_use_reserved_ports    => $nfs_use_reserved_ports,
    nfs_v3_server_readdirplus => $nfs_v3_server_readdirplus,
    nfs_v4_fail_over_timeout  => $nfs_v4_fail_over_timeout,
    portcheck                 => $portcheck,
    server_delegation         => $server_delegation,
    utf8_validation           => $utf8_validation,
    enforce_default           => $enforce_default,
  }

}

