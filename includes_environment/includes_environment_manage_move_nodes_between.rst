.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Nodes can be moved between environments, such as from a "dev" to a "production" environment by using the |subcommand knife exec| sub-command. For example:

.. code-block:: bash

   $ knife exec -E 'nodes.transform("chef_environment:dev") { |n| n.chef_environment("production") }'
