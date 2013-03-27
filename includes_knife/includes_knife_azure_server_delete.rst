.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``server delete`` argument is used to delete one or more instances that are running in the |windows azure| cloud. To find a specific cloud instance, use ``knife azure server list``. Use the ``--purge`` option to delete all associated node and client objects from the |chef server| or use the ``knife node delete`` and ``knife client delete`` sub-commands to delete specific node and client objects.

This argument has the following syntax::

   knife azure server delete [SERVER...] (options)

This argument has the following options:

``-H HOST_NAME``, ``--azure_host_name HOST_NAME``
   |azure_host_name|

``-N NODE_NAME``, ``--node-name NODE_NAME``
   |node-name purge| This must be used with the ``-p`` (purge) option.

``-p FILE_NAME``, ``--azure-mgmt-cert FILE_NAME``
   |azure_pem_filename|

``-P``, ``--purge``
   |purge windows azure|

``-S ID``, ``--azure-subscription-id ID``
   |azure_subscription_id|

``--verify-ssl-cert``
   |azure_verify_ssl_certificate|

**Examples**

For example, to delete an instance named "devops12", enter:

.. code-block:: bash

   $ knife azure server delete devops12
