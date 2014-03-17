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

describe 'rackspace_tripwire::default' do
  let(:chef_run) do
    ChefSpec::Runner.new do |node|
      node.set['platform_family'] = 'rhel'
    end.converge(described_recipe)
  end

  context 'rhel specific' do
    it 'should install the epel repo' do
      expect(chef_run).to install_package('tripwire')
    end
  end
end
