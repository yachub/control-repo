class profile::base {

  #the base profile should include component modules that will be on all nodes
  if $facts['os']['family'] == 'RedHat' and $facts['os']['release']['major'] >= '8' {
    service { 'nftables':
      enable => 'mask',
    }
  }

}
