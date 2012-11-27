.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The GET method is used to return a data structure that contains links to each available search index. By default, the ``role``, ``node``, ``client`` indexes will always be available. Search indexes may lag behind the most current data at any given time. If a situation occurs where data needs to be written and then immediately searched, an artificial delay (of at least 10 seconds) is recommended.

This method has no parameters.

**Request**

.. code-block:: xml

   GET /search

This method has no request body.

**Response**

The response will return something like the following:

.. code-block:: javascript

   {
     "node": "http://localhost:4000/search/node",
     "role": "http://localhost:4000/search/role",
     "client": "http://localhost:4000/search/client",
     "users": "http://localhost:4000/search/users"
   }

**Response Codes**

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
