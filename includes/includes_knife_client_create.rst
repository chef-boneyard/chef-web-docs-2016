.. This is an included file that describes a sub-command or argument in Knife.


The ``create`` argument is used to create a new |chef client|. This process will generate an RSA key pair for the named |chef client|. The public key will be stored on the |chef server| and the private key will be displayed on STDOUT or written to a named file.

For the |chef client|, the private key should be copied to the system as |path chef private key|. If the private key is not copied, a 403 error will be returned. This is because the file in which the private key is located does not exist and the user who is trying to run the |chef client| does not have permission to re-create the private key.

For users who will use |knife| to access the |chef client| API as an administrator, a |chef client admin| should be created. The private key is typically copied to |path chef private key admin| and referenced in the |knife rb| configuration file.

.. note:: Running a client as a |chef client admin| has no effect when using |chef hosted|.

This argument has the following syntax::

   knife client create CLIENT_NAME (options)

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-a``, ``admin``
     - |admin|
   * - ``-f FILE_NAME``, ``--file FILE_NAME``
     - |file private key|

For example, to create a |chef client admin| with the name "exampleorg-validator" and save its private key to a file, enter:

.. code-block:: bash

   $ knife client create exampleorg-validator -a -f "/etc/chef/client.pem"





