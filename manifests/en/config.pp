# Configures individual en network parameters. They should preferably be specified
# using hiera, but you can pass them as a hash of hashes otherwise.

class aix_tunables::en::config($en_resources = undef) {
  if $en_resources != undef {
    create_resources(en, $en_resources)
  }
}
