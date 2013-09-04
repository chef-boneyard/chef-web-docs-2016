This repository contains examples of the roles, environments and other supporting files for deploying an OpenStack **Grizzly** reference architecture using Chef.

https://github.com/stackforge/openstack-chef-repo

Usage
------------

Berkshelf
++++++++++++

This repository uses Berkshelf (https://berkshelf.com) to manage downloading all of the proper cookbook versions, whether from Git or from the Opscode Community site (https://community.opscode.com). The preference is to eventually upstream all cookbook dependencies to the Opscode Community site. The [Berksfile](Berksfile) lists the current dependencies.

Spiceweasel
++++++++++++

.. include:: ../../includes_openstack/includes_openstack_chef_repo_spiceweasel.rst

Roles
------------

Environments
------------
