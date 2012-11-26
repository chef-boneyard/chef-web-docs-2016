.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The GET method is used to return the details for an environment as |json|.

This method has no parameters.

**Request**

.. code-block:: xml

   GET /environments/NAME

**Response**

The response will return something like the following:

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
