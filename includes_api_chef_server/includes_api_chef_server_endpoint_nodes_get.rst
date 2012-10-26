.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The GET method is used to return a hash of URIs for nodes on the |chef server|.

This method has no parameters.

**Request**

.. code-block:: ruby

   GET /nodes

**Response**

The response will return something like the following:

.. code-block:: javascript

   {
     "latte": "http://localhost:4000/nodes/latte"
   }

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Response Code
     - Description
   * - ``200``
     - |response code 200 ok|