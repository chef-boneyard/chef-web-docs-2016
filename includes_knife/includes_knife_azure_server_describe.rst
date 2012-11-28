.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``server describe`` argument is used to view a detailed description of one or more roles that exist in a |windows azure| cloud instance. For each specified role name, information such as status, size, hosted service name, deployment name, ports (open, local, public) and IP are displayed.

This argument has the following syntax::

   knife azure server describe [ROLE_NAME...]

This argument has the following options:

``-H HOST_NAME``, ``--azure_host_name HOST_NAME``
   |azure host name|

``-p FILE_NAME``, ``--azure-pem-filename FILE_NAME``
   |azure-pem-filename|

``-S ID``, ``--azure-subscription-id ID``
   |azure-subscription-id|

``--verify-ssl-cert``
   |azure verify ssl certificate|

**Examples**

For example, to view the details for a role named "admin", enter:

.. code-block:: bash

   $ knife azure server describe admin



