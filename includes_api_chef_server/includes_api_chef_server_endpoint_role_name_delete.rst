.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The DELETE method is used to delete a role on the |chef server|.

This method has no parameters.

**Request**

.. code-block:: xml

   DELETE /roles/ROLE_NAME

**Response**

The response will return something like the following:

.. code-block:: javascript

   {
     "name": "webserver",
     "chef_type": "role",
     "json_class": "Chef::Role",
     "default_attributes": {},
     "description": "A webserver",
     "run_list": [
       "recipe[apache2]"
     ],
     "override_attributes": {}
   }

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Response Code
     - Description
   * - ``200``
     - |response code 200 ok|
   * - ``404``
     - |response code 404 not found|
