# rhel.rb: serverspec file for testing the default recipe

require 'spec_helper'

describe yumrepo('epel') do
  it { should exist }
end
