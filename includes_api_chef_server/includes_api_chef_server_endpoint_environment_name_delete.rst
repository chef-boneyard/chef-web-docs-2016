.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The DELETE method is used to delete an environment.

This method has no parameters.

**Request**

.. code-block:: ruby

   DELETE /environments/ENVIRONMENT_NAME

**Response**

The response will return the |json| for the environment that was deleted, something like the following:

.. code-block:: javascript

   {
     "name": "dev",
     "attributes": {},
     "json_class": "Chef::Environment",
     "description": "",
     "cookbook_versions": {},
     "chef_type": "environment"
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