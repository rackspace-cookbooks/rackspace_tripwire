require 'spec_helper'

# purposely include default.rb and not debian.rb
describe 'rackspace_tripwire::default' do
  let(:chef_run) do
    ChefSpec::Runner.new do |node|
      node.set['platform_family'] = 'debian'
    end.converge(described_recipe)
  end

  it 'should include the proper recipe' do
    expect(chef_run).to include_recipe('rackspace_tripwire::debian')
  end

  it 'should install the package tripwire' do
    expect(chef_run).to install_package('tripwire')
  end
end
