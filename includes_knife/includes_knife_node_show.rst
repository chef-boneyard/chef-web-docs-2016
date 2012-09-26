.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``show`` argument is used to display information about a node.

This argument has the following syntax::

   knife node show NODE_NAME (options)

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-a ATTR``, ``--attribute ATTR``
     - |attribute|
   * - ``-E ENVIRONMENT``, ``--environment ENVIRONMENT``
     - |environment|
   * - ``-l``, ``--long``
     - |long|
   * - ``-m``, ``--medium``
     - |medium|
   * - ``-r``, ``--run-list``
     - |run-list indicator|

For example, to view all data for a node named "build", enter:

.. code-block:: bash

   $ knife node show build

to return:

.. code-block:: bash

   Node Name:   build
   Environment: _default
   FQDN:
   IP:
   Run List:
   Roles:
   Recipes:
   Platform:
   
To view the FQDN for a node named "i-12345678", enter:

.. code-block:: bash

   $ knife node show i-12345678 -a fqdn

to return:

.. code-block:: bash

   fqdn: ip-10-251-75-20.ec2.internal

To view the run list for a node named "dev", enter:

.. code-block:: bash

   $ knife node show dev -r

