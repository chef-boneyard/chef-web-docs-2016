.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``POST`` method is used to create a new node.

This method has no parameters.

**Request**

.. code-block:: xml

   POST /nodes

with a request body that looks something like:

.. code-block:: javascript

   {
     "name": "latte",
     "chef_type": "node",
     "json_class": "Chef::Node",
     "attributes": {
       "hardware_type": "laptop"
     },
     "overrides": {},
     "defaults": {},
     "run_list": [ "recipe[unicorn]" ]
   }

where ``name`` is the name of the node. Other attributes are optional. The order of the ``run_list`` attribute matters.

**Response**

The response will return something like the following:

.. code-block:: javascript

   { "uri": "http://localhost:4000/nodes/latte" }

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
     - |response code 409 conflict|