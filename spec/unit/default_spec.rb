require 'spec_helper'

describe 'rackspace_tripwire::default' do
  let(:chef_run) do
    ChefSpec::Runner.new do
    end.converge(described_recipe)
  end

  it 'should install the package tripwire' do
    expect(chef_run).to install_package('tripwire')
  end
end
