.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``GET`` method is used to return the |chef api client| list on the |chef server|, including nodes that have been registered with the |chef server|, the |chef validator| clients, and the |chef server webui| clients.

This method has no parameters.

**Request**

.. code-block:: xml

   GET /clients

**Response**

The response will return something like the following:

.. code-block:: javascript

   {
     "node1": "https://api.opscode.com/organizations/org_name/clients/node_name",
     "node2": "https://api.opscode.com/organizations/org_name/clients/node_name"
   }

or:

.. code-block:: javascript

   {
     "node1": "http://localhost:4000/clients/node_name",
     "node2": "http://localhost:4000/clients/node_name",
     "node3": "http://localhost:4000/clients/node_name"
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
