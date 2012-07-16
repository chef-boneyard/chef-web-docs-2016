.. This is an included file that describes a sub-command or argument in Knife.


The ``image list`` argument is used to list of images from the |hp cloud| environment, listed by ID and name.

This argument has the following syntax::

   knife hp image list

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

   ID                Name
   1234              CentOS 5.6 Server 64-bit
   1358              CentOS 6.2 Server 64-bit
   1361              Debian Squeeze 6.0.3 Server 64-bit
   1236              Ubuntu Lucid 10.04 LTS Server 64-bit
   1238              Ubuntu Maverick 10.10 Server 64-bit
   1240              Ubuntu Natty 11.04 Server 64-bit
   1242              Ubuntu Oneiric 11.10 Server 64-bit

