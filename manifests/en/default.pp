# Configure default settings for en devices
class aix_tunables::en::default(
      $configured_ens    = hiera('aix_tunables::en::config::en_resources', {}),
      $alias4            = undef,
      $alias6            = undef,
      $arp               = undef,
      $authority         = undef,
      $broadcast         = undef,
      $monitor           = undef,
      $mtu               = undef,
      $mtu_bypass        = undef,
      $netaddr           = undef,
      $netaddr6          = undef,
      $netmask           = undef,
      $prefixlen         = undef,
      $remmtu            = undef,
      $rfc1323           = undef,
      $security          = undef,
      $state             = undef,
      $tcp_mssdflt       = undef,
      $tcp_nodelay       = undef,
      $tcp_recvspace     = undef,
      $tcp_sendspace     = undef,
      $thread            = undef,
      $device_in_use     = undef,
      $available_only    = true,
      $reboot_notify_cmd = $aix_tunables::params::reboot_notify_cmd,
) inherits aix_tunables::params {
  require aix_tunables::p_ent::default
  require aix_tunables::p_ent::config
  require aix_tunables::ent::default
  require aix_tunables::ent::config

  if $available_only {
    $default_ens =
      split(inline_template("<%= (ens_array_available - configured_ens.keys).join(',') %>"), ',')
  } else {
    $default_ens =
      split(inline_template("<%= (ens_array - configured_ens.keys).join(',') %>"), ',')
  }

  en { $default_ens:
    alias4            => $alias4,
    alias6            => $alias6,
    arp               => $arp,
    authority         => $authority,
    broadcast         => $broadcast,
    monitor           => $monitor,
    mtu               => $mtu,
    mtu_bypass        => $mtu_bypass,
    netaddr           => $netaddr,
    netaddr6          => $netaddr6,
    netmask           => $netmask,
    prefixlen         => $prefixlen,
    remmtu            => $remmtu,
    rfc1323           => $rfc1323,
    security          => $security,
    state             => $state,
    tcp_mssdflt       => $tcp_mssdflt,
    tcp_nodelay       => $tcp_nodelay,
    tcp_recvspace     => $tcp_recvspace,
    tcp_sendspace     => $tcp_sendspace,
    thread            => $thread,
    device_in_use     => $device_in_use,
    reboot_notify_cmd => $reboot_notify_cmd,
  }
}
