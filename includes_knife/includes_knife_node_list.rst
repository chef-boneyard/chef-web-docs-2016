.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``list`` argument is used to view all of the nodes that exist on a |chef server|. 

This argument has the following syntax::

   knife node list (options)

This argument has the following options:

``-w``, ``--with-uri``
   |with-uri|

For example, enter:

.. code-block:: bash

   $ knife node list

to return:

.. code-block:: bash

   i-12345678
   rs-123456

