.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``DELETE`` method is used to delete an organization.

This method has no parameters.

**Request**

.. code-block:: xml

   DELETE /organizations/ORG_NAME

**Response**

The response is similar to:

.. code-block:: javascript

   {
     "name"=>"chef",
     "full_name"=>"Chef Software, Inc",
     "guid"=>"f980d1asdfda0331235s00ff36862
   } 

**Response Codes**

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Response Code
     - Description
   * - ``200``
     - |response code 200 ok|
   * - ``403``
     - |response code 403 forbidden|

