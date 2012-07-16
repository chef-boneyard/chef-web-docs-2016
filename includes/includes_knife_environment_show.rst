.. This is an included file that describes a sub-command or argument in Knife.


The ``show`` argument is used to display information about the specified environment. 

This argument has the following syntax::

   knife environment show ENVIRONMENT_NAME

This argument does not have any options.

For example, to view information about the "dev" environment enter:

.. code-block:: bash

   $ knife environment show dev
   
to return:

.. code-block:: bash

   % knife environment show dev
   chef_type:            environment
   cookbook_versions:
   default_attributes:
   description:
   json_class:           Chef::Environment
   name:                 dev
   override_attributes:
    
   \\
   \\ 
   \\
   \\


