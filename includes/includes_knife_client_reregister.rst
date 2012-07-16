.. This is an included file that describes a sub-command or argument in Knife.


The ``reregister`` argument is used to regenerate an RSA key pair for a |chef client|. The public key will be stored on the |chef server| and the private key will be displayed on STDOUT or written to a named file.

.. note:: Running this argument will invalidate the previous RSA key pair, making it unusable during authentication to the |chef server|. 

This argument has the following syntax::

   knife client reregister CLIENT_NAME (options)

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-f FILE_NAME``, ``--file FILE_NAME``
     - |file private key|

For example, to regenerate the RSA key pair for a client named "testclient" and save it to a file named "rsa_key", enter:

.. code-block:: bash

   $ knife client regenerate testclient -f rsa_key

