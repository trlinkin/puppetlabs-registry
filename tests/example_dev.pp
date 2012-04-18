# = Class: registry_example
#
#   This is an example of how to manage registry keys and values.
#
# = Parameters
#
# = Actions
#
# = Requires
#
# = Sample Usage
#
#     include registry_example
#
# (MARKUP: http://links.puppetlabs.com/puppet_manifest_documentation)
class registry_example {
  registry_key { 'HKLM\Software\Vendor':
    ensure => present,
  }

  registry_key { 'HKLM\Software\Vendor\Bar':
    ensure => present,
  }

  registry_value { 'HKLM\Software\Vendor\Bar\value1':
    ensure => present,
    type   => qword,
    data   => 0,
  }

  registry_value { 'HKLM\Software\Vendor\Bar\value2':
    ensure => present,
    type   => expand,
    data   => hello,
  }
}

include registry_example
