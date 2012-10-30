.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The GET method is used to get a specific version of a cookbook. Use ``latest`` to get the most recent version of a cookbook.

This method has no parameters.

**Request**

.. code-block:: xml

   GET /cookbooks/COOKBOOK_NAME/versions/latest

Or:

.. code-block:: xml

   GET /cookbooks/COOKBOOK_NAME/versions/VERSION

**Response**

The response will return details for a cookbook version, including the license under which the cookbook is distributed, the most recent update, version, URI, date of cookbook creation, path to the cookbook's tar.gz file, and so on:

.. code-block:: ruby

   {
      "license": "GPLv2",
      "updated_at": "2009-09-26T00:51:36Z",
      "tarball_file_size": null,
      "version": "2.0",
      "average_rating": null,
      "cookbook": "http://www.example.com/api/v1/cookbooks/ptapache",
      "created_at": "2009-09-26T00:51:36Z",
      "file": "/tarballs/original/missing.png"
   }

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Response Code
     - Description
   * - ``200``
     - |response code 200 ok| The requested cookbook exists.
   * - ``400``
     - |response code 400 unsuccessful| The requested cookbook does not exist. For example:
       ::

          {
             "error_messages":
             ["Resource does not exist"],
             "error_code": "NOT_FOUND"
          }