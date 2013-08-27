This repository contains examples of the roles, environments and other supporting files for deploying an OpenStack **Grizzly** reference architecture using Chef.

https://github.com/stackforge/openstack-chef-repo

Usage
------------

Berkshelf
++++++++++++

This repository uses Berkshelf (https://berkshelf.com) to manage downloading all of the proper cookbook versions, whether from Git or from the Opscode Community site (https://community.opscode.com). The preference is to eventually upstream all cookbook dependencies to the Opscode Community site. The [Berksfile](Berksfile) lists the current dependencies.

Spiceweasel
++++++++++++

There is a Spiceweasel (http://bit.ly/spcwsl) [infrastructure.yml](infrastructure.yml) manifest documenting all the roles and environments required to deploy OpenStack.

To see the commands necessary to push all of the files to the Chef server, run the following command:

```
spiceweasel infrastructure.yml
```

To actually deploy the repository to your Chef server, run the following command:

```
spiceweasel -e infrastructure.yml
```

Roles
------------

Environments
------------
