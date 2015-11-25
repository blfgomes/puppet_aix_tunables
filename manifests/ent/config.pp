# Configures individual ent network parameters. They should preferably be specified
# using hiera, but you can pass them as a hash of hashes otherwise.

class aix_tunables::ent::config(
      $ent_resources     = undef,
      $reboot_notify_cmd = $aix_tunables::params::reboot_notify_cmd,
) inherits aix_tunables::params {
  if $ent_resources != undef {
    create_resources(ent, $ent_resources)
  }
}
