# Class for asoo kernel tunable
class aix_tunables::asoo( $aso_active              = undef,
                          $debug_level             = undef,
                          $enforce_default         = undef,
                          $reboot_notify_cmd       = $aix_tunables::params::reboot_notify_cmd,
) inherits aix_tunables::params {

  asoo {'asoo':
    aso_active        => $aso_active,
    debug_level       => $debug_level,
    enforce_default   => $enforce_default,
    reboot_notify_cmd => $reboot_notify_cmd,
  }

}

