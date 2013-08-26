There are a few specifics for Chef usage within **Chef for OpenStack**:

* They are developed and tested almost exclusively with the latest release of the Chef client (currently 11.6).
* Most users are using the "Omnibus" full-stack client, downloaded from http://www.opscode.com/chef/install/.
* Ruby 1.9.1 or later is assumed.
* There is an assumption that you are using a Chef server, Chef-Solo may not work (patches welcome).
* Cookbooks expose their configuration via attributes.
* Attributes are typically overridden in Environments, not Roles.
* Search may be short-circuited by attributes providing the value (ie. IP addresses of services).
* There are currently no data bags used.
* `Berkshelf <http://berkshelf.com/>`_ manages cookbook versions in the `OpenStack Chef repository </openstack_cookbooks_repo>`.
* `Spiceweasel <https://github.com/mattray/spiceweasel>`_ for managing, validating and deploying the cookbooks, roles, environments and data bags with the `OpenStack Chef repository </openstack_cookbooks_repo>`.
* `Strainer <https://github.com/customink/strainer>`_ coordinates the testing against the Chef repository.
* `Tailor <https://github.com/turboladen/tailor>`_ is used to check Ruby code style.
* `Foodcritic <http://acrmp.github.io/foodcritic/>`_ is for lint checking the cookbooks.
* `ChefSpec <https://github.com/acrmp/chefspec>`_ is for basic unit acceptance tests.
* `Test-Kitchen <https://github.com/opscode/test-kitchen>`_ will be used once it is 1.0 for single node testing.
* `Vagabond <https://github.com/chrisroberts/vagabond>`_ is being investigated for multi-node testing.
