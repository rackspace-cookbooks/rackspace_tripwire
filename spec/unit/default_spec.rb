require 'spec_helper'

describe 'rackspace_tripwire::default' do
  let(:chef_run) do
    ChefSpec::Runner.new do
    end.converge(described_recipe)
  end

  it 'logs when an unsupported OS' do
    expect(chef_run).to write_log('Unsupported OS detected').with(level: :info)
  end

  it 'creates twpol.txt' do
    expect(chef_run).to create_template('/etc/tripwire/twpol.txt').with(
      user:   'root',
      group:  'root',
      mode:   00600
    )
  end

  it 'creates twcfg.txt' do
    expect(chef_run).to create_template('/etc/tripwire/twcfg.txt').with(
      user:   'root',
      group:  'root',
      mode:   00600
    )
  end
end
