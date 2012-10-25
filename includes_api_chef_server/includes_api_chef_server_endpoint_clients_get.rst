.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The GET method is used to return the |chef api client| list on the |chef server|, including nodes that have been registered with the |chef server|, |chef validator|, and |chef webui|.

This method has no parameters.

**Request**

.. code-block:: ruby

   GET /clients

**Response**

The response will return something like the following:

.. code-block:: ruby

   {
     "chef-webui": "http://localhost:4000/clients/chef-webui",
     "chef-validator": "http://localhost:4000/clients/chef-validator",
     "adam": "http://localhost:4000/clients/adam"
   }

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Response Code
     - Description
   * - ``200``
     - The request was successful.
