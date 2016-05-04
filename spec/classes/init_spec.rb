require 'spec_helper'
describe 'lldpd' do

  context 'with defaults for all parameters' do
    it { should contain_class('lldpd') }
  end
end
