.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The GET method is used to return a list of all data bags on the |chef server|.

This method has no parameters.

**Request**

.. code-block:: xml

   GET /data

**Response**

The response will return something like the following:

.. code-block:: javascript

   {
     "users": "http://localhost:4000/data/users",
     "applications": "http://localhost:4000/data/applications"
   }

shown as a list of key:value pairs, where (in the example above) ``users`` and ``applications`` are the keys and "http://localhost:4000/data/foo" are the values.

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Response Code
     - Description
   * - ``200``
     - |response code 200 ok|
