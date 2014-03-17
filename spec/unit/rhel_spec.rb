require 'spec_helper'

describe 'rackspace_tripwire::rhel' do
  let(:chef_run) do
    ChefSpec::Runner.new do |node|
      node.set['platform_family'] = 'rhel'
    end.converge(described_recipe)
  end

  it 'should install the package tripwire' do
    expect(chef_run).to install_package('tripwire')
  end
end