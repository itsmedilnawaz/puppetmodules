require 'spec_helper'
describe 'global1' do
  context 'with default values for all parameters' do
    it { should contain_class('global1') }
  end
end
