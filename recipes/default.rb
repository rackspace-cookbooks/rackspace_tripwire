#
# Cookbook Name:: rackspace_tripwire
# Recipe:: default
#
# Copyright 2014, Rackspace, US Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# recipe per platform family to handle their specifics
if platform_family?('rhel')
  include_recipe 'rackspace_tripwire::rhel'
elsif platform_family?('debian')
  include_recipe 'rackspace_tripwire::debian'
else
  log 'Unsupported OS detected' do
    level :info
  end
end

# drop in policy file
template '/etc/tripwire/twpol.txt' do
  cookbook node['rackspace_tripwire']['twpol']['templates_book']
  source 'twpol.txt.erb'
  mode 0600
  owner 'root'
  group 'root'
  variables(
    cookbook_name: cookbook_name
  )
end

# drop in config file
template '/etc/tripwire/twcfg.txt' do
  cookbook node['rackspace_tripwire']['twcfg']['templates_book']
  source 'twcfg.txt.erb'
  mode 0600
  owner 'root'
  group 'root'
  variables(
    cookbook_name: cookbook_name
  )
end

# Generate keys
