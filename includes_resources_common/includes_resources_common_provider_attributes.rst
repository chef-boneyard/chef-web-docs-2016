.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |chef client| will determine the correct provider based on configuration data collected by |ohai| at the start of the |chef client| run. This configuration data is then `mapped to a platform and an associated list of providers <https://github.com/opscode/chef/blob/master/lib/chef/platform/provider_mapping.rb>`_.

Generally, it's best to let the |chef client| choose the provider and this is (by far) the most common approach. However, in some cases specifying a provider may be desirable. There are two approaches:

* Use a more specific short name---``yum_package "foo" do`` instead of ``package "foo" do``, ``script "foo" do`` instead of ``bash "foo" do``, and so on---when available
* Use the ``provider`` attribute to specify the long name as an attribute of a resource, e.g. ``provider Chef::Provider::Long::Name``




