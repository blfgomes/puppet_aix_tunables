# Configure default settings for disks
class aix_tunables::disks::default(
      $configured_disks  = hiera('aix_tunables::disks::config::disk_resources', {}),
      $algorithm         = undef,
      $hcheck_cmd        = undef,
      $hcheck_mode       = undef,
      $max_transfer      = undef,
      $queue_depth       = undef,
      $reserve_policy    = undef,
      $reboot_notify_cmd = $aix_tunables::params::reboot_notify_cmd,
) inherits aix_tunables::params {

  $default_disks =
    split(inline_template("<%= (disks_array - configured_disks.keys).join(',') %>"), ',')

  disk { $default_disks:
    algorithm         => $algorithm,
    hcheck_cmd        => $hcheck_cmd,
    hcheck_mode       => $hcheck_mode,
    max_transfer      => $max_transfer,
    queue_depth       => $queue_depth,
    reserve_policy    => $reserve_policy,
    reboot_notify_cmd => $reboot_notify_cmd,
  }
}
