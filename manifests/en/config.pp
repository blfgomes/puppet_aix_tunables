# Configures individual en network parameters. They should preferably be specified
# using hiera, but you can pass them as a hash of hashes otherwise.
#
# Example in hiera:
#
# aix_tunables::en::config::en_resources:
#   en3:
#     mtu: 1500
# 


class aix_tunables::en::config(
      $en_resources      = undef,
      $reboot_notify_cmd = $aix_tunables::params::reboot_notify_cmd,
) inherits aix_tunables::params {
  if $en_resources != undef {
    create_resources(en, $en_resources)
  }
}
