.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The POST method is used to create a new role on the |chef server|.

This method has no parameters.

**Request**

.. code-block:: ruby

   POST /roles

with a request body that looks something like:

.. code-block:: javascript

   {
     "name": "webserver",
     "chef_type": "role",
     "json_class": "Chef::Role",
     "default_attributes": {},
     "description": "A webserver",
     "run_list": [
       "recipe[unicorn]",
       "recipe[apache2]"
     ],
     "override_attributes": {}
   }

**Response**

The response will return something like the following:

.. code-block:: javascript

   { "uri": "http://localhost:4000/roles/webserver" }

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Response Code
     - Description
   * - ``201``
     - |response code 200 ok|
   * - ``409``
     - |response code 409 conflict|