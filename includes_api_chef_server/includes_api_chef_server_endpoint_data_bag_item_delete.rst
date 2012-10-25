.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The DELETE method is used to delete a key-value pair in a data bag item.

This method has no parameters.

**Request**

.. code-block:: ruby

   DELETE /data/DATA_BAG_NAME/DATA_BAG_ITEM

This method has no request body.

**Response**

The response will return something like the following:

.. code-block:: ruby

   {
     "id": "adam",
     "real_name": "Adam Brent Jacob"
   }

where the key-value pairs represent the last state of the data bag item.

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Response Code
     - Description
   * - ``200``
     - The request was successful.
   * - ``401``
     - Unauthorized. The user which made the request is not allowed to delete the data bag item.
   * - ``404``
     - Not found. The data bag item does not exist.
