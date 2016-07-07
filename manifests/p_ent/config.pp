# Configures individual physical ent network parameters. They should preferably be specified
# using hiera, but you can pass them as a hash of hashes otherwise.
#
# Example in hiera:
#
# aix_tunables::p_ent::config::p_ent_resources:
#   ent3:
#     jumbo_frames: yes
#

class aix_tunables::p_ent::config(
      $p_ent_resources   = undef,
      $reboot_notify_cmd = $aix_tunables::params::reboot_notify_cmd,
) inherits aix_tunables::params {
  if $p_ent_resources != undef {
    create_resources(p_ent, $p_ent_resources)
  }
}
