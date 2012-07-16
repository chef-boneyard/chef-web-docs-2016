.. This is an included file that describes a sub-command or argument in Knife.


The ``create`` argument is used to add an environment object to the |chef server|. When this argument is run, |knife| will open $EDITOR to enable editing of the ENVIRONMENT description field (unless a description is specified as part of the command). When finished, |knife| will add the environment to the |chef server|. 

This argument has the following syntax::

   knife environment create ENVIRONMENT_NAME -d DESCRIPTION

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-d DESCRIPTION``, ``--description DESCRIPTION``
     - |description environment|

For example:

.. code-block:: bash

   $ knife environment create dev -d "The development environment."


