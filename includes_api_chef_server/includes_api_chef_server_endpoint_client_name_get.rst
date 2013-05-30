.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``GET`` method is used to return a specific |chef api client|.

This method has no parameters.

**Request**

.. code-block:: xml

   GET /clients/NAME

**Response**

The response will return something like the following:

.. code-block:: javascript

   {
     "name": "monkeypants",
     "chef_type": "client",
     "json_class": "Chef::ApiClient",
     "public_key": "-----BEGIN PUBLIC KEY-----\n
                   MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCyVPW9YXa5PR0rgEW1updSxygB\n
                   wmVpDnHurgQ7/gbh+PmY49EZsfrZSbKgSKy+rxdsVoSoU+krYtHvYIwVfr2tk0FP\n
                   nhAWJaFH654KpuCNG6x6iMLtzGO1Ma/VzHnFqoOeSCKHXDhmHwJAjGDTPAgCJQiI\n
                   eau6cDNJRiJ7j0/xBwIDAQAB\n
                   -----END PUBLIC KEY-----"
     "_rev": "1-68532bf2122a54464db6ad65a24e2225",
     "admin": true
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
