class flexget(
    $packages = params_lookup( 'packages' ),
    $enabled  = params_lookup( 'enabled' )
  ) inherits flexget::params {

    $ensure = $enabled ? {
        true => present,
        false => absent
    }

    include flexget::package, flexget::config, flexget::service
}
