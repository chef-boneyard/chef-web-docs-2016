.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A node is considered to be associated with an environment when the ``chef_environment`` attribute is set. The ``chef_environment`` attribute cannot be set with normal or override attributes (i.e. in a role) because it is actually a method. It must be set explicitly using the ``knife edit`` or ``knife exec`` sub-commands, or by using one of the following methods:

* By editing the ``chef_environment`` directly using |knife| or a management console
* By editing the ``environment`` configuration details in the |knife rb| file and then using the ``knife bootstrap`` subcommand to bootstrap the changes to the specified environment
* By setting the ``environment`` configuration entry in the |client rb| file (by default: /etc/chef/client.rb). When the |chef client| runs, it will pick up the value and then set the ``chef_environment`` attribute of the node
* By calling the ``node.chef_environment("node_name")`` object and then using ``node.save`` to update the ``chef_environment`` with the attribute specified by ``node_name``. (The ``chef_environment`` attribute cannot be accessed using the typical attribute sequence: ``node[:attribute_name]``.)

