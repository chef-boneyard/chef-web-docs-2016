.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The GET method is used to return all of the data that matches the query in the GET request.

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Parameter
     - Description
   * - ``q``
     - A valid search string.
   * - ``rows``
     - The number of rows to be returned.
   * - ``sort``
     - A sort string, such as ``name DESC``.
   * - ``start``
     - The result number from which to start.

**Request**

.. code-block:: xml

   GET /search/INDEX

**Response**

The response contains the total number of rows that match the request and will return something like the following:

.. code-block:: javascript

   {
    "total": 1,
    "start": 0,
    "rows": [
       {
        "overrides": {"hardware_type": "laptop"},
        "name": "latte",
        "chef_type": "node",
        "json_class": "Chef::Node",
        "attributes": {"hardware_type": "laptop"},
        "run_list": ["recipe[unicorn]"],
        "defaults": {}
       }
     ]
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
   * - ``403``
     - |response code 403 forbidden|
   * - ``404``
     - |response code 404 not found|
