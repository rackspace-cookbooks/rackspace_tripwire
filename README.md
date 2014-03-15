rackspace_tripwire Cookbook
===========================
This cookbook installs and configures [tripwire](http://www.tripwire.com/)

Requirements
------------
This cookbook is tested and supported on:
`debian`, `ubuntu` and `rhel/centos 6`

- This cookbook does not support configuring the twpol file. It will use a default one unless you override the template location. i.e.:


### cookbooks
`rackspace_yum` to set up and install `epel` for centos/rhel

Attributes
----------
- default['rackspace_tripwire']['install_method'] = 'package'
  + Install type. Currently only package is supported
- default['rackspace_tripwire']['packages_list'] = %w[tripwire]
  + A customizable list of packages to install along with tripwire itself

Usage
-----
#### rackspace_tripwire::default
default recipe that will install and configure tripwire

e.g.
Just include `rackspace_tripwire` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[rackspace_tripwire]"
  ]
}
```

License and Authors
-------------------
Authors: Ryan Richard (<ryan.richard@rackspace.com>)

Copyright: 2014, Rackspace, US Inc

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
