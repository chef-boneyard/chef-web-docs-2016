.. This is an included file that describes a sub-command or argument in Knife.


The ``server delete`` argument is used to delete one or more instances that are running in the |windows azure| cloud. To find a specific cloud instance, use ``knife azure server list``. Use the ``--purge`` option to delete all associated node and client objects from the |chef server| or use the ``knife node delete`` and ``knife client delete`` sub-commands to delete specific node and client objects.

This argument has the following syntax::

   knife azure server delete [SERVER...] (options)

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-H HOST_NAME``, ``--azure_host_name HOST_NAME``
     - |azure-host-name|
   * - ``-N NODE_NAME``, ``--node-name NODE_NAME``
     - |node-name purge| This must be used with the ``-p`` (purge) option.
   * - ``-p``, ``--purge``
     - |purge windows azure|
   * - ``-p FILE_NAME``, ``--azure-pem-filename FILE_NAME``
     - |azure-pem-filename|
   * - ``-S ID``, ``--azure-subscription-id ID``
     - |azure-subscription-id|

For example, to delete an instance named "devops12", enter:

.. code-block:: bash

   $ knife azure server delete devops12
