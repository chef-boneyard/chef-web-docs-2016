.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``GET`` method is used to get license information for the |chef server|.

This method has no parameters.

**Request**

.. code-block:: xml

   GET /organizations/ORG_NAME/license

**Response**

The response will return something like the following:

.. code-block:: javascript

   {
     "limit_exceeded": "false"
     "node_license": "25"
     "node_count": "12"
     "upgrade_url": "http://www.getchef.com/contact/on-premises-simple"
   }

**Response Codes**

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
