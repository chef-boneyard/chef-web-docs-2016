.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``server create`` argument is used to create a new |terremark| instance.

This argument has the following syntax::

   knife terremark server create SERVER_NAME [RUN_LIST] (options)

This argument has the following options:

``-A USER_NAME``, ``--terremark-username USER_NAME``
   |terremark-username|

``-K PASSWORD``, ``--terremark-password PASSWORD``
   |terremark-password|

``-S SERVICE``, ``--terremark-service SERVICE``
   |terremark-service|

For example, to create a new instance, enter:

.. code-block:: bash

   $ knife terremark server list server_name -A useraccount -K password -S service_name

To provision a new dual-core 1.0 GB |ubuntu| 10.04 web server with three attached disks with sizes of "25G", "50G", and "50G", enter something like:

.. code-block:: bash

   $ knife terremark server create --vcpus 2 -m 1024 -I 40 -A 'username' -K "password" 
     -r 'role[webserver]' -i ~/.ssh/ssh-identity-file.pem -N web-server-nginx --tcp 80,8080 
     --udp 5050 --disks 25,50,50




