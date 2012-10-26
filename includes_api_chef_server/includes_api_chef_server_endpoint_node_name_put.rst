.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The PUT method is used to update a node.

This method has no parameters.

**Request**

.. code-block:: ruby

   PUT /nodes/NODE_NAME


with a request body that looks something like:

.. code-block:: javascript

   {
     "overrides": {},
     "name": "latte",
     "chef_type": "node",
     "json_class": "Chef::Node",
     "attributes": {
       "hardware_type": "laptop"
     },
     "run_list": [
       "recipe[apache2]"
     ],
     "defaults": {}
   }

**Response**

The response will return the updated node.

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Response Code
     - Description
   * - ``200``
     - |response code 200 ok|
   * - ``404``
     - |response code 404 not found|
