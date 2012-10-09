.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``list`` argument is used to view a list of registered |chef api client|. 

This argument has the following syntax::

   knife client list (options)

This argument has the following options:

``-w``, ``--with-uri``
   |with-uri|

For example, enter:

.. code-block:: bash

   $ knife client list

to return something similar to:

.. code-block:: bash

   exampleorg-validator
   i-12345678
   rs-123456

To verify that an |chef api client| can authenticate to the 
|chef server| correctly, try getting a list of clients using ``-u`` and ``-k`` options to specify its name and private key:

.. code-block:: bash

   $ knife client list -u ORGNAME-validator -k .chef/ORGNAME-validator.pem

