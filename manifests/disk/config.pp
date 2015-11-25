# Configures individual disk parameters. They should preferably be specified
# using hiera, but you can pass them as a hash of hashes otherwise.

class aix_tunables::disk::config(
      $disk_resources    = undef,
      $reboot_notify_cmd = $aix_tunables::params::reboot_notify_cmd,
) inherits aix_tunables::params {
  if $disk_resources != undef {
    create_resources(disk, $disk_resources)
  }
}
