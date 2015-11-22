require 'puppetlabs_spec_helper/module_spec_helper'

RSpec.configure do |c|
  c.hiera_config = 'spec/fixtures/hiera.yaml'
  c.default_facts = {
    id:                      'root',
    kernel:                  'Linux',
    osfamily:                'RedHat',
    operatingsystem:         'RedHat',
    operatingsystemrelease:  '7',
    interfaces:              'eth1,nat0,lo',
    first_network_interface: 'eth1',
  }
end

at_exit { RSpec::Puppet::Coverage.report! }
