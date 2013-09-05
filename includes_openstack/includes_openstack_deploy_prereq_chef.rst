.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Guidelines for |chef openstack|:

* Cookbooks are developed and tested with the latest release of the |chef client|
* Most users will install the full-stack client using the |omnibus installer|: http://www.opscode.com/chef/install/
* |ruby| 1.9.1 or later is assumed
* A |chef server| is being used; |chef solo| may not work (patches welcome)
* Cookbooks expose their configuration via attributes
* Attributes are typically overridden by environment attributes
* Roles do not provide attributes
* Search may be short-circuited by attributes that provide a value, such as the IP addresses of services
* Data bags are not used
* `Berkshelf <http://berkshelf.com/>`_ is used to manage cookbook versions in the |chef repo openstack|
* `Spiceweasel <https://github.com/mattray/spiceweasel>`_ is used to manage, validate, and deploy cookbooks, roles, environments and data bags to the |chef repo openstack|
* `Strainer <https://github.com/customink/strainer>`_ is used to coordinate testing against the |chef repo|
* `Tailor <https://github.com/turboladen/tailor>`_ is used to validate |ruby| code style
* `Foodcritic <http://acrmp.github.io/foodcritic/>`_ is used for lint-checking the cookbooks
* `ChefSpec <https://github.com/acrmp/chefspec>`_ is used for basic unit acceptance tests
* `test-kitchen <https://github.com/opscode/test-kitchen>`_ is used for single-node testing (after the point at which test-kitchen is a 1.0 release)
* `Vagabond <https://github.com/chrisroberts/vagabond>`_ may be used for multi-node testing (currently being investigated for this purpose)
