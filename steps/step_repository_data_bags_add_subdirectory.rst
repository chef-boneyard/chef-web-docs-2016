.. This is an included how-to. 

To create a data bag sub-directory:

1. Enter the following:

   .. code-block:: bash

      $ mkdir data_bags/NAME_OF_DATA_BAG

   where ``NAME_OF_DATA_BAG`` is the name of the data bag to be created.
2. Create the |json| files for each data bag item. For example:

   .. code-block:: bash

      $ data_bags/NAME_OF_DATA_BAG/NAME_OF_DATA_BAG_ITEM.json

   where ``NAME_OF_DATA_BAG_ITEM`` is the name of the data bag item, repeating for each data bag item as required.
3. Add information to each data bag item. The |json| format is similar to the following:

   .. code-block:: javascript

      {
        "id": "foo"
        "name_of_attribute": "bar"
      }   

   where ``id`` is required (the name of the data bag item) and ``name_of_attribute`` is an attribute unique to this data bag item. ``foo`` and ``bar`` are attribute values. More than one attribute can be added to a data bag item (though, typically, they have as few attributes as possible).
