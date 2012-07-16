.. This is an included file that describes a sub-command or argument in Knife.


The ``configure`` sub-command is used to create the |knife rb| and |client rb| files so that they can be distributed to workstations and nodes.

This sub-command has the following syntax::

   knife configure (options)

This sub-command has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``--client DIRECTORY``
     - |client|
   * - ``-i``, ``--initial``
     - |initial|
   * - ``-r REPO``, ``--repository REPO``
     - |repository|

For example, to create a |knife rb| file, enter:

.. code-block:: bash

   $ knife configure
   
To configure a |client rb|, enter:

.. code-block:: bash

   $ knife configure client '/directory'


