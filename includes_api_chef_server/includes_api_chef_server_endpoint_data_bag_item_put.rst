.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The PUT method is used to update a key-value pair in a data bag item.

This method has no parameters.

**Request**

.. code-block:: xml

   POST /data/DATA_BAG_NAME/DATA_BAG_ITEM

with a request body that looks something like:

.. code-block:: javascript

   {
     "real_name": "Adam Brent Jacob",
     "id": "adam"
   }

where ``id`` is required.

**Response**

The response will return something like the following:

.. code-block:: javascript

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
     - |response code 200 ok|
   * - ``401``
     - |response code 401 unauthorized|
   * - ``404``
     - |response code 404 not found|
