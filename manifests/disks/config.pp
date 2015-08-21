class aix_tunables::disks::config($disks = []) {
  disk { $disks:
    queue_depth => 18,
  }
}
