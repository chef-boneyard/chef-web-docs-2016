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
     "clientname": "client_name",
     "orgname": "org_name",
     "validator": false,
     "certificate": "-----BEGIN CERTIFICATE-----\n
                     MIIDOjCCAqOgAwIBAgIE47eOmDANBgkqhkiG9w0BAQUFADCBnjELMAkGA1UEBhMC\n
                     VVMxEzARBgNVBAgMCldhc2hpbmd0b24xfrsgbg@VBAcMB1NlYXR0bGUxFjAUBgNV\n
                     BAoMDU9wc2NvZGUsIEluYy4xHDAaBgNVBAsME0NlcnRpZmljYXRlIFNlcnZpY2Ux\n
                     MjAwBgNVBAMMKW9wc2NvZGUuY29tL2VtYWlsQWRkcmVzcz1hdXRoQG9wc2NvZGUu\n
                     Y29tMCAXDTEyMDkwNzE4MDUwOFo1234g5ghdcDAzMTgwNTA4WjCBnTEQMA4GA1UE\n
                     BxMHU2VhdHRsZTETMBEGA1UECBMKV2FzaGluZ3RvbjELMAkGA1UEBhMCVVMxHDAa\n
                     BgNVBAsTE0NlcnRpZmljYXRlIFNlcnZpY2UxFjAUBgNVBAoTDU9wc2NvZGUsIElu\n
                     Yy4xMTAvBgNVBAMUKFVSSTpodHRwOi8vb3BzY29kZS5jb20vR1VJRFMvY2xpZW50\n
                     X2d1aWQwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDJhwXHuq96iHpv\n
                     SDkDdpSAWa3O81o1ZkG1/H1GmRKc3NDp9KfL/eg/itJeVT5BJ2DXenhbP0M8BHQG\n
                     arObwx6vXm+H/Q2sdfbbhdFt5y6wQZI4Dqnv7Hk/H95jUb+MJoXpJkB7zYSqrrei\n
                     LBjjPg2p+M9+EUklelLeXDJDdj1xL5RNdDfv3yxyESTdYYVboQwgqbP3yGy7ITQc\n
                     vg11qmDzg7L17q6uQevVap6aECuGS7//CcDcKJwuBYQukJi7QFs5V4ayq6GlgfT/h\n
                     b/yjEAcfcqvBBDOO8K34fExnWTO7fdghh4btddPayHbud8dW0m3KdzhUaIh9BlGz\n
                     xFTdI8/lAgMBAAEwDQYJKoZIhvcNAQEFBQADgYEAZlvDZWmw0u0VS4mapSxuKPAz\n
                     4qhB8yttbZj8H9hUNfMdHMpyE3jJGFcLokRXdfxOsFNoPUj0hn+5BKTqtmdd6T1u\n
                     iDVoFfJ3nVPfGJMdPXZyi62pNCwPe/va13dLqTG92AGNDjjOxmMma9/OQ8Ty0eBu\n
                     HWOxaK6VpV8pqZPq/Fg=\n-----END CERTIFICATE-----\n",
     "name": "node_name"
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
