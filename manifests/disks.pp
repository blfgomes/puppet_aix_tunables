# Disks
class aix_tunables::disks {
  class  {'aix_tunables::disks::config': 
	   disks => $::disks_array, }
}
