.. This is an included file that describes a sub-command or argument in Knife.


The ``flavor list`` argument is used to get a list of servers from the |eucalyptus| environment, listed by ID, architecture, RAM, and disks, and cores.

This argument has the following syntax::

   knife eucalyptus flavor list

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-A ID``, ``--euca-access-key-id ID``
     - |euca-access-key-id|
   * - ``-K SECRET``, ``--euca-secret-access-key SECRET``
     - |euca-secret-access-key|
   * - ``--euca-api-endpoint ENDPOINT``
     - |euca-api-endpoint|
   * - ``--region REGION``
     - |region eucalyptus|

For example, enter:

.. code-block:: bash

   $ knife eucalyptus flavor list

