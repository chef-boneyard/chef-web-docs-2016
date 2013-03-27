.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``server list`` argument is used to find instances that are associated with a |windows azure| account. The results may show instances that are not currently managed by the |chef server|.

This argument has the following syntax::

   knife azure server list

This argument has the following options:

``-H HOST_NAME``, ``--azure_host_name HOST_NAME``
   |azure_host_name|

``-p FILE_NAME``, ``--azure-mgmt-cert FILE_NAME``
   |azure_pem_filename|

``-S ID``, ``--azure-subscription-id ID``
   |azure_subscription_id|

``--verify-ssl-cert``
   |azure_verify_ssl_certificate|


