.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``GET`` method is used to return the status of the system components used by |reporting|. 

This method does not have any parameters.

**Request**

.. code-block:: xml

   GET /reports/status

**Response**

The response will return something like the following:

.. code-block:: javascript

   {
     "rest_api" : "online",
     "sql_db" : "online",
     "index" : ""online"
   }

where ``index`` is the |chef server| search index. If the system component is not online, the response will return ``offline``.

**Response Codes**

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Response Code
     - Description
   * - ``200``
     - |response code 200 ok|
   * - ``404``
     - |response code 404 not found|
   * - ``406``
     - Invalid request. The protocol version is incorrect.
