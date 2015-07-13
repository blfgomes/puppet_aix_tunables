require 'spec_helper'
describe 'aix_tunables' do

  context 'with defaults for all parameters' do
    it { should contain_class('aix_tunables') }
  end
end
