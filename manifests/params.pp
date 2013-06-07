# Class: flexget::params
#
# This class defines default parameters used by the main module class flexget
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to flexget class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class flexget::params {

  ### Application related parameters

  $packages = $::operatingsystem ? {
    default => ['flexget', 'transmissionrpc']
  }

  $enabled = true

}
