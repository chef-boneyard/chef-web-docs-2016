.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The PUT method is used to update a key-value pair in a data bag item.

This method has no parameters.

**Request**

.. code-block:: ruby

   POST /data/DATA_BAG_NAME/DATA_BAG_ITEM

with a request body that looks something like:

.. code-block:: ruby

   {
     "real_name": "Adam Brent Jacob",
     "id": "adam"
   }

where ``id`` is required.

**Response**

The response will return something like the following:

.. code-block:: ruby

   {
     "real_name": "Adam Brent Jacob",
     "id": "adam"
   }

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Response Code
     - Description
   * - ``200``
     - The request was successful.
   * - ``401``
     - Unauthorized. The user which made the request is not allowed to update the data bag item.
   * - ``404``
     - Not found. The data bag item does not exist.
