.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for chef (the executable).
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This subcommand has the following options:

``-c CONFIG_FILE``, ``--config CONFIG_FILE``
   The path to the |knife| configuration file.

``--cookbook COOKBOOK_PATH``
   Use to specify the location of the cookbook that is used to provision the node. Default value: ``./provision``.

``-d``, ``--destroy``
   Use to set the default action for the |resource machine| resource to ``:destroy``. Default value: ``false``.

``-h``, ``--help``
   |help subcommand|

``-n NODE_NAME``, ``--node-name NODE_NAME``
   Use to specify the name of the node. (This value may be overridden by the cookbook that is used to provision the node.)

``-p POLICY_NAME``, ``--policy-name POLICY_NAME``
   Use to set the policy name for one (or more) machines that are managed by this |policyfile rb| file.

``--[no-]policy``
   Use ``--policy`` to enable one (or more) machines to be managed by a |policyfile rb| file. Default value: ``--policy``.

``-r RECIPE``, ``--recipe RECIPE``
   Use to specify the name of the recipe to be run. This recipe must be located in the ``policyfile`` cookbook at the path specified by the ``--cookbook`` option.

``-s PATH``, ``--sync PATH``
   Use to push a |policyfile rb| file to the |chef server| before running the |chef client| on a node. The ``PATH`` is the location of the |policyfile rb| file to be synchronized.

``-t REMOTE_HOST``, ``--target REMOTE_HOST``
   Use to set the hostname or IP address of the host on which the |chef client| run will occur. (This value may be overridden by the cookbook that is used to provision the node.)

``-v``, ``--version``
   |version chef|
