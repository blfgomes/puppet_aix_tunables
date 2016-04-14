# Configures individual disk parameters. They should preferably be specified
# using hiera, but you can pass them as a hash of hashes otherwise.
#
# Example in hiera:
#
# aix_tunables::disk::config::disk_resources:
#   hdisk0:
#     max_transfer: '0x100000'
#     queue_depth: 128
#   hdisk1:
#     max_transfer: '0x100000'
#     queue_depth: 128


class aix_tunables::disk::config(
      $disk_resources    = undef,
      $reboot_notify_cmd = $aix_tunables::params::reboot_notify_cmd,
) inherits aix_tunables::params {
  if $disk_resources != undef {
    create_resources(disk, $disk_resources)
  }
}
