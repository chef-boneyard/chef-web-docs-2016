.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for chef-client.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

On |linux|, the following error sometimes occurs when the permissions used to run the |chef client| are incorrect:

.. code-block:: bash

   $ chef-client
   [Tue, 29 Nov 2015 19:46:17 -0800] INFO: *** Chef 12.X.X ***
   [Tue, 29 Nov 2015 19:46:18 -0800] WARN: Failed to read the private key /etc/chef/client.pem: #<Errno::EACCES: Permission denied - /etc/chef/client.pem>

This can be resolved by running the command as root. There are a few ways this can be done:

* Log in as root and then run the |chef client|
* Use ``su`` to become the root user, and then run the |chef client|. For example:
   
   .. code-block:: bash
   
      $ su
   
   and then:
   
   .. code-block:: bash
   
      $ chef-client

* Use the |sudo cmd| utility

   .. code-block:: bash

      $ sudo chef-client

* Give a user access to read ``/etc/chef`` and also the files accessed by the |chef client|. This requires super user privileges and, as such, is not a recommended approach




