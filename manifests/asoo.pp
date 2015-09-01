class aix_tunables::asoo($aso_active              = undef,
                         $debug_level             = undef,
                         $enforce_default         = undef,) {


  asoo {'asoo':
    aso_active              => $aso_active,
    debug_level             => $debug_level,
    enforce_default         => $enforce_default,
  }

}

