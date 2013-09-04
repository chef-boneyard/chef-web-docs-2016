.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |chef repo openstack| contains examples of the roles, environments and other supporting files for deploying an |openstack grizzly| reference architecture using |chef|.

https://github.com/stackforge/openstack-chef-repo

Usage
------------

Berkshelf
++++++++++++

The |chef repo openstack| uses |berkshelf| (https://berkshelf.com) to manage downloading all of the proper cookbook versions, whether from Git or from the |opscode| community website (https://community.opscode.com). The preference is to eventually upstream all cookbook dependencies to the |opscode| community website. A .berksfile (the file type used by |berkshelf|) lists the current cookbook dependencies.

Spiceweasel
++++++++++++

.. include:: ../../includes_openstack/includes_openstack_chef_repo_spiceweasel.rst

Roles
------------

Environments
------------
