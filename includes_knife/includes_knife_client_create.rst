.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``create`` argument is used to create a new |chef client|. This process will generate an RSA key pair for the named |chef client|. The public key will be stored on the |chef server| and the private key will be displayed on STDOUT or written to a named file.

For the |chef client|, the private key should be copied to the system as |path chef private key|. The private key is typically copied to |path chef private key admin| and referenced in the |knife rb| configuration file. If the private key is not copied, a 403 error will be returned. This is because the file in which the private key is located does not exist and the user who is trying to run the |chef client| does not have permission to re-create the private key.

This argument has the following syntax::

   knife client create CLIENT_NAME (options)

This argument has the following options:

``-a``, ``--admin``
   |admin client| This option only works when used with |chef open server| and will have no effect when used with |chef hosted| or |chef private|.

``-c CONFIG``, ``--config CONFIG``
   |config|

``--color``
   |color|

``--defaults``
   |defaults|

``-e EDITOR``, ``--editor EDITOR``
   |editor|

``-E ENVIRONMENT``, ``--environment ENVIRONMENT``
   |environment|

``-f FILE_NAME``, ``--file FILE_NAME``
   |file private key|

``-F FORMAT``, ``--format FORMAT``
   |format|

``-h``, ``--help``
   |help|

``-k KEY``, ``--key KEY``
   |key|

``--no-color``
   |no-color|

``-n``, ``--disable-editing``
   |no-editor|

``--print-after``
   |print-after|

``-s URL``, ``--server-url URL``
   |server-url|

``-u USER``, ``--user USER``
   |user|

``-v``, ``--version``
   |version chef|

``-V``, ``--verbose``
   |verbose|

``-y``, ``--yes``
   |yes|

For example, to create a |chef client admin| with the name "exampleorg-validator" and save its private key to a file, enter:

.. code-block:: bash

   $ knife client create exampleorg-validator -a -f "/etc/chef/client.pem"

When running the ``create`` argument on |chef hosted| or |chef private|, be sure to omit the ``-a`` option:

.. code-block:: bash

   $ knife client create exampleorg-validator -f "/etc/chef/client.pem"





