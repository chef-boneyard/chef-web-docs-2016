.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``image list`` argument is used to get a list of images that exist in a |windows azure| environment. Any image in this list may be used for provisioning.

This argument has the following syntax::

   knife azure image list (options)

This argument has the following options:

``-H HOST_NAME``, ``--azure_host_name HOST_NAME``
   |azure host name|

``-p FILE_NAME``, ``--azure-pem-filename FILE_NAME``
   |azure-pem-filename|

``-S ID``, ``--azure-subscription-id ID``
   |azure-subscription-id|

``--verify-ssl-cert``
   |azure verify ssl certificate|


