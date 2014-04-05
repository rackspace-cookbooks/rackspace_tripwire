# debian.rb: serverspec file for testing the debian recipe

require 'spec_helper'

describe package('tripwire') do
  it { should be_installed }
end
