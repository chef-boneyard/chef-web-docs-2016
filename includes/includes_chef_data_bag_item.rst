.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A data bag is a container of related data bag items, where each individual data bag item is a JSON file. The only structural requirement of a data bag item is that it must have an ``id``:

.. code-block:: javascript

   {
     "id": "ITEM_NAME"
     "key": "value"
   }

where ``key`` and ``value`` are the key:value pair for each additional attribute within the data bag item. |knife| can load a data bag item by specifying the name of the data bag to which the item belongs and then the filename of the data bag item.