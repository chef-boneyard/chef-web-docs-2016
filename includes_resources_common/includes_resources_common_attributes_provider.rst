.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |chef client| will attempt to determine the correct provider during the |chef client| run, and then choose the best/correct provider based on configuration data collected at the start of the |chef client| run. In general, a specific provider does not need to be specified. In situations where a specific provider must be specified, there are two approaches:

* Using a provider's short name as the name of the resource, e.g. ``short_name "foo" do``
* Using the ``provider`` attribute to specify the long name as an attribute of a resource, e.g. ``provider Chef::Provider::Long::Name``

Whenever possible, try using the short name first, and then use the long name when necessary.