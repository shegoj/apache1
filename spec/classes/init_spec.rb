require 'spec_helper'
describe 'apache1' do

  context 'with defaults for all parameters ehow' do
    it { should contain_class('apache1') }
    it { should contain_file('/opt/graphite').with_require('Package[httpd]')}
  end
end
