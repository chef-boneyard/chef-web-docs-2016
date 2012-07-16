.. This is an included file that describes a sub-command or argument in Knife.


The ``flavor list`` argument is used to get a list of servers from the |hp cloud| environment, listed by ID, name, cores, RAM, and disk size.

This argument has the following syntax::

   knife hp flavor list

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-A ID``, ``--hp-account ID``
     - |hp-account|
   * - ``--hp-auth URI``
     - |hp-auth|
   * - ``-K SECRET``, ``--hp-secret SECRET``
     - |hp-secret|
   * - ``-T ID``, ``--hp-tenant ID``
     - |hp-tenant|
   * - ``-Z ZONE``, ``--hp-zone ZONE``
     - |hp-zone|

For example, enter:

.. code-block:: bash

   $ knife hp flavor list

to return:

.. code-block:: bash

   ID        Name              Cores     RAM          Disk
   100       standard.xsmall   1         1024 MB      30 GB
   101       standard.small    2         2048 MB      60 GB
   102       standard.medium   2         4096 MB      120 GB
   103       standard.large    4         8192 MB      240 GB
   104       standard.xlarge   4         16384 MB     480 GB
   105       standard.2xlarge  8         32768 MB     960 GB

