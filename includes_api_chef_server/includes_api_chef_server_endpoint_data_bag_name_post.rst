.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The POST method is used to create a new data bag item.

This method has no parameters.

**Request**

.. code-block:: ruby

   POST /data/DATA_BAG_NAME

with a request body that looks something like:

.. code-block:: ruby

   {
     "id": "adam",
     "real_name": "Adam Jacob"
   }

where ``id`` is required.

**Response**

This method has no response body.

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Response Code
     - Description
   * - ``200``
     - The request was successful.
   * - ``401``
     - Unauthorized. The user which made the request is not allowed to create the data bag item.
   * - ``404``
     - Not found. The data bag in which the data bag item is to be created does not exist.
   * - ``409``
     - Conflict. The data bag already exists.
