#
# Cookbook Name:: rackspace_tripwire
# Recipe:: default
#
# Copyright 2014, Rackspace, US Inc.
#
# All rights reserved - Do Not Redistribute
#

node['rackspace_tripwire']['packages_list'].each do |package_name|
  package package_name do
    action :install
  end
end
