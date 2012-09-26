.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``server create`` argument is used to create a new |terremark| instance.

This argument has the following syntax::

   knife terremark server create SERVER_NAME [RUN_LIST] (options)

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
   * - ``-S SERVICE``, ``--terremark-service SERVICE``
     - |terremark-service|

For example, to create a new instance, enter:

.. code-block:: bash

   $ knife terremark server list server_name -A useraccount -K password -S service_name

