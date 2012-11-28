.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``delete`` argument is used to delete a data bag or a data bag item from a |chef server|.

This argument has the following syntax::

   knife data bag delete DATA_BAG_NAME [DATA_BAG_ITEM] (options)

This argument has the following options:

``DATA_BAG_ITEM``
   |DATA_BAG_ITEM|

**Examples**

For example:

.. code-block:: bash

   $ knife data bag delete admins
   
Or, to delete an item named "charlie", enter:

.. code-block:: bash

   $ knife data bag delete admins charlie

Type ``Y`` to confirm a deletion.

