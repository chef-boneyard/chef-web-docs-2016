.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A node is considered to be associated with an environment when the ``chef_environment`` attribute is set. The ``chef_environment`` attribute cannot be set with normal or override attributes (i.e. in a role) because it is actually a method. It must be set explicitly using the ``knife edit`` or ``knife exec`` sub-commands, or by using one of the following methods:

* By editing the ``chef_environment`` directly using |knife| or a management console
* By editing the ``environment`` configuration details in the |knife rb| file and then using the ``knife bootstrap`` subcommand to bootstrap the changes to the specified environment
* By setting the ``environment`` configuration entry in the |client rb| file (by default: /etc/chef/client.rb). When the |chef client| runs, it will pick up the value and then set the ``chef_environment`` attribute of the node
* By calling the ``node.chef_environment("environment_name")`` method on the node object to set the ``chef_environment`` with the value specified by ``environment_name`` and then using ``node.save`` to save the node object back to the |chef server|.

