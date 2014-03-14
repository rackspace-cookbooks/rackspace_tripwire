# default.rb: serverspec file for testing the default recipe

require 'spec_helper'

describe package('tripwire') do
  it { should be_installed }
end