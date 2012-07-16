.. This is an included file that describes a sub-command or argument in Knife.


The ``server list`` argument is used to find instances that are associated with a |terremark| account. The results may show instances that are not currently managed by the |chef server|.

This argument has the following syntax::

   knife terremark server list (options)

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-A USER_NAME``, ``--terremark-username USER_NAME``
     - |terremark-username|
   * - ``-K PASSWORD``, ``--terremark-password PASSWORD``
     - |terremark-password|
   * - ``-S SERVICE_NAME``, ``--terremark-service SERVICE_NAME``
     - |terremark-service|

For example, enter:

.. code-block:: bash

   $ knife terremark server list -A useraccount -K password -S service_name

to return something like:

.. code-block:: bash

   xxxxx

