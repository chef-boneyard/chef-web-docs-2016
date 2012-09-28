.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``list`` argument is used to view a list of registered clients. 

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

To get the list of clients for a specific organization, use the ``-u`` and ``-k`` options:

.. code-block:: bash

   $ knife client list -u ORGNAME-validator -k .chef/ORGNAME-validator.pem

