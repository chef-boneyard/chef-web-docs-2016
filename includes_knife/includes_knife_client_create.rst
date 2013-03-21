.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``create`` argument is used to create a new |chef api client|. This process will generate an RSA key pair for the named |chef api client|. The public key will be stored on the |chef server| and the private key will be displayed on STDOUT or written to a named file.

* For the |chef client|, the private key should be copied to the system as |path chef private key|.
* For |knife|, the private key is typically copied to |path chef private key admin| and referenced in the |knife rb| configuration file. 

This argument has the following syntax::

   knife client create CLIENT_NAME (options)

This argument has the following options:

``-a``, ``--admin``
   |admin client| This option only works when used with the open source |chef server| and will have no effect when used with |chef hosted| or |chef private|.

**Examples**

For example, to create a |chef client admin| with the name "exampleorg" and save its private key to a file, enter:

.. code-block:: bash

   $ knife client create exampleorg -a -f "/etc/chef/client.pem"

When running the ``create`` argument on |chef hosted| or |chef private|, be sure to omit the ``-a`` option:

.. code-block:: bash

   $ knife client create exampleorg -f "/etc/chef/client.pem"





