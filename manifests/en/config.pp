# Configures individual en network parameters. They should preferably be specified
# using hiera, but you can pass them as a hash of hashes otherwise.

class aix_tunables::en::config($en_resources) {
  create_resources(en, $en_resources)
}
