.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


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


