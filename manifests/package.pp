class flexget::package {

    # Install python before this
    Class['python'] -> Class['flexget::package']

    package  { $flexget::packages:
        ensure   => $flexget::ensure,
        provider => 'pip',
    }

}
