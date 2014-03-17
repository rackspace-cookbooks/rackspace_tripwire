#
# Cookbook Name:: rackspace_tripwire
# Recipe:: debian
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

# install debconf-utils used for preseeding
package 'debconf-utils' do
  action :install
end

# install package with preseed file disabling key creation
package 'tripwire' do
  response_file 'tripwire.preseed'
  action :install
end
