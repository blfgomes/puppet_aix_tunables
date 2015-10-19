# Configure default settings for ent devices
class aix_tunables::ent::default(
      $configured_ents   = hiera('aix_tunables::ent::config::ent_resources', {}),
      $alt_addr          = undef,
      $chksum_offload    = undef,
      $copy_buffs        = undef,
      $copy_bytes        = undef,
      $max_buf_huge      = undef,
      $max_buf_large     = undef,
      $max_buf_medium    = undef,
      $max_buf_small     = undef,
      $max_buf_tiny      = undef,
      $min_buf_huge      = undef,
      $min_buf_large     = undef,
      $min_buf_medium    = undef,
      $min_buf_small     = undef,
      $min_buf_tiny      = undef,
      $trace_debug       = undef,
      $use_alt_addr      = undef,
      $device_in_use     = undef,
      $reboot_notify_cmd = $aix_tunables::params::reboot_notify_cmd,
) inherits aix_tunables::params {

  $default_ents =
    split(inline_template("<%= (ents_array - configured_ents.keys).join(',') %>"), ',')

  ent { $default_ents:
    alt_addr          => $alt_addr,
    chksum_offload    => $chksum_offload,
    copy_buffs        => $copy_buffs,
    copy_bytes        => $copy_bytes,
    max_buf_huge      => $max_buf_huge,
    max_buf_large     => $max_buf_large,
    max_buf_medium    => $max_buf_medium,
    max_buf_small     => $max_buf_small,
    max_buf_tiny      => $max_buf_tiny,
    min_buf_huge      => $min_buf_huge,
    min_buf_large     => $min_buf_large,
    min_buf_medium    => $min_buf_medium,
    min_buf_small     => $min_buf_small,
    min_buf_tiny      => $min_buf_tiny,
    trace_debug       => $trace_debug,
    use_alt_addr      => $use_alt_addr,
    device_in_use     => $device_in_use,
    reboot_notify_cmd => $reboot_notify_cmd,
  }
}
