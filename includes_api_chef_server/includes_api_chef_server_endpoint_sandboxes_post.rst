.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The POST method is used to create a new sandbox. This method accepts a list of checksums as input and returns the URLs against which to PUT files that need to be uploaded.

This method has no parameters.

**Request**

.. code-block:: ruby

   POST /sandboxes

with a request body that looks something like:

.. code-block:: ruby

   {"checksums": {
     "385ea5490c86570c7de71070bce9384a":null,
     "f6f73175e979bd90af6184ec277f760c":null,
     "2e03dd7e5b2e6c8eab1cf41ac61396d5":null
     }
   }

**Response**

The response will return something like the following:

.. code-block:: ruby

   {"uri":
    "https://api.opscode.com/organizations/testorg/sandboxes/eff7b6f8b3ef44c6867216662d5eeb5f",
    "checksums":
      {"385ea5490c86570c7de71070bce9384a":
        {"url":
         "https://s3.amazonaws.com/opscode-platform-production-data/organization-(...)",
          "needs_upload":true},
          "f6f73175e979bd90af6184ec277f760c"=>
        {"url":
          "https://s3.amazonaws.com/opscode-platform-production-data/organization-(...)",
          "needs_upload":true},
          "2e03dd7e5b2e6c8eab1cf41ac61396d5":
        {"url":
          "https://s3.amazonaws.com/opscode-platform-production-data/organization-(...)",
          "needs_upload":true}
      },
    "sandbox_id"=>"eff7b6f8b3ef44c6867216662d5eeb5f"
   }

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Response Code
     - Description
   * - ``200``
     - The request was successful. A hash that maps each checksum to a hash that contains a boolean ``needs_upload`` field and a URL if ``needs_upload`` is set to ``true``.
   * - ``400``
     - Bad request. The request was unsuccessful. The payload does not contain a well-formed ``checksums`` parameter that is a hash containing a key for each checksum.
