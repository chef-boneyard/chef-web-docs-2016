.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The DELETE method is used to delete a node.

This method has no parameters.

**Request**

.. code-block:: xml

   DELETE /nodes/NAME

**Response**

The response will return the last known state of the node, similar to:

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