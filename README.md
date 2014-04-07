rackspace_tripwire Cookbook
===========================
This cookbook installs and configures [tripwire](http://www.tripwire.com/)

Requirements
------------
This cookbook is tested and supported on:
`debian`, `ubuntu` and `rhel/centos 6`

- This cookbook does not support configuring the twpol file. It will use a default one unless you override the template location.
- Currently this cookbook only supports installing tripwire. Setting keys and initializing tripwire is out of scope.
- Ubuntu/Debian are explicitly configured to not set up keys via a apt preseed file.

### cookbooks
`rackspace_yum` to set up and install `epel` for centos/rhel

Attributes
----------
- `default['rackspace_tripwire']['twpol']['templates_book']` - Tells the recipes which cookbook to locate the templates in. Default is this cookbook.
- `default['rackspace_tripwire']['twcfg']['templates_book']` - Tells the recipes which cookbook to locate the templates in. Default is this cookbook.

Recipes
-------

- `default.rb` - decides which OS recipe to use for installation.
- `rhel.rb` - Sets up epel and installs the tripwire package
- `debian.rb` - Installs tripwire with a preseed file.

Usage
-----
#### rackspace_tripwire::default
default recipe that will install and configure tripwire

e.g.
Just include `rackspace_tripwire` in your node's `run_list`:

```json
{
  "run_list": ["recipe[rackspace_tripwire]"]
}
```

License and Authors
-------------------
Authors: Ryan Richard (<ryan.richard@rackspace.com>)

Copyright: 2014, Rackspace, US Inc

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
