.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The GET method is used to view all of the key-value pairs in a data bag item.

This method has no parameters.

**Request**

.. code-block:: ruby

   GET /data/DATA_BAG_NAME/DATA_BAG_ITEM

**Response**

The response will return something like the following:

.. code-block:: ruby

   {
     "real_name": "Adam Jacob",
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
     - Unauthorized. The user which made the request is not allowed to view the data bag item.
   * - ``404``
     - Not found. The data bag item does not exist.
