.. This is an included file that describes a sub-command or argument in Knife.


The ``delete`` argument is used to delete a data bag or a data bag item from a |chef server|.

This argument has the following syntax::

   knife data bag delete DATA_BAG_NAME [DATA_BAG_ITEM] (options)

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``DATA_BAG_ITEM``
     - |DATA_BAG_ITEM|

For example:

.. code-block:: bash

   $ knife data bag delete admins
   
Or, to delete an item named "charlie", enter:

.. code-block:: bash

   $ knife data bag delete admins charlie

Type ``Y`` to confirm a deletion.

