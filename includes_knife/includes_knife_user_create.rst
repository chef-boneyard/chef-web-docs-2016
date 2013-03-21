.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``create`` argument is used to create a new |chef| user. This process will generate an RSA key pair for the named user. The public key will be stored on the |chef server| and the private key will be displayed on STDOUT or written to a named file.

* For the user, the private key should be copied to the system as |path chef private key|.
* For |knife|, the private key is typically copied to |path chef private key admin| and referenced in the |knife rb| configuration file. 

This argument has the following syntax::

   knife user create USER_NAME (options)

This argument has the following options:

``-a``, ``--admin``
   |admin client| This option only works when used with the open source |chef server| and will have no effect when used with |chef hosted| or |chef private|.

``-f FILE_NAME``, ``--file FILE_NAME``
   |file private key|

``-p PASSWORD``, ``--password PASSWORD``
   |password user|

``--user-key FILE_NAME``
   |file_public_key|

**Examples**

For example, to create a new user named "Radio Birdman" with a private key saved to "/keys/user_name", enter:

.. code-block:: bash

   $ knife user create "Radio Birdman" -f /keys/user_name
