.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``reregister`` argument is used to regenerate an RSA key pair for a |chef| user. The public key will be stored on the |chef server| and the private key will be displayed on ``STDOUT`` or written to a named file.

.. note:: Running this argument will invalidate the previous RSA key pair, making it unusable during authentication to the |chef server|. 

This argument has the following syntax::

   knife user reregister USER_NAME (options)

This argument has the following options:

``-f FILE_NAME``, ``--file FILE_NAME``
   |file private key|

**Examples**

For example, to regenerate the RSA key pair for a user named "Robert Younger", enter:

.. code-block:: bash

   $ knife user reregister "Robert Younger"
