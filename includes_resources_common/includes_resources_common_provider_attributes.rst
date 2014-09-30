.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |chef client| will determine the correct provider based on configuration data collected by |ohai| at the start of the |chef client| run. This configuration data is then `mapped to a platform and an associated list of providers <https://github.com/opscode/chef/blob/master/lib/chef/platform/provider_mapping.rb>`_. 

Generally, it's best to let the |chef client| choose the provider. However, in some cases it may be necessary to override the define a more specific a provider. There are two approaches:

* Using a provider’s short name as the name of the resource, e.g. ``short_name "foo"`` do
* Using the ``provider`` attribute to specify the long name as an attribute of a resource, e.g. ``provider Chef::Provider::Long::Name``

Whenever possible, try using the short name first, and then use the long name if necessary.
