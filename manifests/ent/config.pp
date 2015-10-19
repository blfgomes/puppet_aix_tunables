# Configures individual ent network parameters. They should preferably be specified
# using hiera, but you can pass them as a hash of hashes otherwise.

class aix_tunables::ent::config($ent_resources) {
  create_resources(ent, $ent_resources)
}
