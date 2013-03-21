.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The POST method is used to create a new data bag on the |chef server|.

This method has no parameters.

**Request**

.. code-block:: xml

   POST /data

with a request body that contains the key:value pair for the data bag and looks something like:

.. code-block:: javascript

   {
     "name": "users"
   }

where (in the example above) ``name`` is the key and "users" is the value.

**Response**

The response will return something like the following:

.. code-block:: javascript

   {
      "chef_type" => "xxxxx"
      "data_bag" => "xxxxx"
      "id" => "xxxxx"
   }

**Response Codes**

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Response Code
     - Description
   * - ``201``
     - |response code 201 created|
   * - ``400``
     - |response code 400 bad request|
   * - ``401``
     - |response code 401 unauthorized|
   * - ``403``
     - |response code 403 forbidden|
   * - ``409``
     - |response code 409 unauthorized|
