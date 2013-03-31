.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``server describe`` argument is used to view a detailed description of one or more roles that exist in a |windows azure| cloud instance. For each specified role name, information such as status, size, hosted service name, deployment name, ports (open, local, public) and IP are displayed.

This argument has the following syntax::

   knife azure server describe [ROLE_NAME...]

This argument has the following options:

``-H HOST_NAME``, ``--azure_host_name HOST_NAME``
   |azure_host_name|

``-p FILE_NAME``, ``--azure-mgmt-cert FILE_NAME``
   |azure_pem_filename|

``-S ID``, ``--azure-subscription-id ID``
   |azure_subscription_id|

``--verify-ssl-cert``
   |azure_verify_ssl_certificate|

**Examples**

For example, to view the details for a role named "admin", enter:

.. code-block:: bash

   $ knife azure server describe admin



