.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``server create`` argument is used to create a new |windows azure| cloud instance. This will provision a new image in |windows azure|, perform a |chef| bootstrap (using the |ssh| protocol), and then install |chef| on the target system so that it can be run as a |chef client| and communicate with a |chef server|.

This argument has the following syntax::

   knife azure server create (options)

This argument has the following options:

``-a STORAGE_ACCOUNT_NAME``, ``--storage-account STORAGE_ACCOUNT_NAME``
   |storage account|

``--bootstrap-protocol PROTOCOL``
   |bootstrap protocol| Default value: ``winrm``.

``--bootstrap-version VERSION``
   |bootstrap-version|

``-d DISTRO``, ``--distro DISTRO``
   |distro|

``-D DESCRIPTION``
   |azure host description|

``-H HOST_NAME``, ``--azure_host_name HOST_NAME``
   |host-name|

``--host_name HOST_NAME``
   |azure host name|

``-i IDENTITY_FILE``, ``--identity-file IDENTITY_FILE``
   |identity-file|

``-I IMAGE``, ``--source-image IMAGE``
   |source-image|

``-m LOCATION``, ``--service-location LOCATION``
   |media location|

``-N NAME``, ``--node-name NAME``
   |node-name| Node names in |chef|, when used with |windows azure|, must be 91 characters or shorter.

``--[no-]host-key-verify``
   |[no-]host-key-verify|

``-o DISK_NAME``, ``--os-disk-name DISK_NAME``
   |os-disk-name|

``-p FILE_NAME``, ``--azure-mgmt-cert FILE_NAME``
   |azure-pem-filename|

``-P PASSWORD``, ``--ssh-password PASSWORD``
   |ssh-password|

``--prerelease``
   |prerelease|

``-r RUN_LIST``, ``--run-list RUN_LIST``
   |run-list|

``-R ROLE_NAME``, ``--role-name ROLE_NAME``
   |role-name|

``-s SERVICE_NAME``, ``--hosted-service-name SERVICE_NAME``
   |hosted-service-name|

``-S ID``, ``--azure-subscription-id ID``
   |azure-subscription-id|

``-t PORT_LIST``, ``--tcp-endpoints PORT_LIST``
   |tcp-endpoints|

``--template-file TEMPLATE``
   |template-file|

``-u PORT_LIST``, ``---udp-endpoints PORT_LIST``
   |udp-endpoints|

``--verify-ssl-cert``
   |azure verify ssl certificate|

``-x USER_NAME``, ``--ssh-user USER_NAME``
   |ssh-user|

``-z SIZE``, ``--role-size SIZE``
   |role-size|

**Examples**

For example, to provision a medium-sized |centos| machine configured as a web server in the "West US" data center, while also creating new hosted service and storage accounts, enter something like:

.. code-block:: bash

   $ knife azure server create -r "role[webserver]" --service-location "West US" --ssh-user foo 
     --ssh--password password --role-name web-apache-0001 --host-name web-apache 
     --tcp-endpoints 80:80,8080:8080 --source-image name_of_source_image --role-size Medium

To provision a medium-sized |centos| machine configured as a web server in the "West US" data center, while reusing existing hosted service and storage accounts, enter something like:

.. code-block:: bash

   $ knife azure server create -r "role[webserver]" --service-location "West US" 
     --hosted-service-name webservers --storage-account webservers-storage --ssh-user foo 
     --ssh--password password --role-name web-apache-0001 --host-name web-apache 
     --tcp-endpoints 80:80,8080:8080 --source-image name_of_source_image --role-size Medium



