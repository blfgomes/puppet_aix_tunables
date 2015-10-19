# Configures individual disk parameters. They should preferably be specified
# using hiera, but you can pass them as a hash of hashes otherwise.

class aix_tunables::disk::config($disk_resources) {
  create_resources(disk, $disk_resources)
}
