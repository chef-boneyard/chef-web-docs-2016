.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The pattern for file specificity is as follows:

#. host-node[:fqdn]
#. node[:platform]-node[:platform_version]
#. node[:platform]-version_components: The version string is split on decimals and searched from greatest specificity to least; for example, if the location from the last rule was centos-5.7.1, then centos-5.7 and centos-5 would also be searched.
#. node[:platform]
#. default
