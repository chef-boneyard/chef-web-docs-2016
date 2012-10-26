.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The GET method is used to get the details for a cookbook. 

This method has no parameters.

**Request**

.. code-block:: ruby

   GET /cookbooks/COOKBOOK_NAME

**Response**

The response will return details for a cookbook, including name of the cookbook, the category to which it belongs, the name of the individual who maintains the cookbook, the URI for the latest version, its description, and so on:

.. code-block:: ruby

   {
     "name": "apache",
     "category": "web servers",
     "updated_at": "2009-09-26T00:51:36Z",
     "maintainer": "jtimberman",
     "latest_version": "http://cookbooks.opscode.com/api/v1/cookbooks/apache/versions/2_0",
     "external_url": null,
     "versions":
      ["http://www.example.com/api/v1/cookbooks/apache/versions/1_0",
       "http://www.example.com/api/v1/cookbooks/apache/versions/2_0"],
     "description": "installs apache.",
     "average_rating": null,
     "created_at": "2009-09-26T00:51:36Z"
   }

If a cookbook is deprecated, that status is noted by the ``deprecated`` field (being ``true``):

.. code-block:: ruby

   {
     "name": "apache",
     "category": "web servers",
     ...
     "deprecated": true,
     ...
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