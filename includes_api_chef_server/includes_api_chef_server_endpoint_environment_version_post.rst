.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The POST method is used to return a hash of the cookbooks and cookbook versions (including all dependencies) that are required by the run_list array. Version constraints may be specified using the ``@`` symbol after the cookbook name as a delimiter.

This method has no parameters.

**Request**

.. code-block:: xml

   POST /environments/ENVIRONMENT_NAME/cookbook_versions

with a request body that looks something like:

.. code-block:: javascript

   rest.post_rest("environments/_default/cookbook_versions", 
     {:run_list => 
       [
         "zed@0.0.1",
         "bar",
         "mysql",
         "gem",
         "nginx@0.99.2",
         "cron",
         "foo"
       ] 
     }).keys
     => [
          "mysql",
          "runit",
          "zed",
          "cron",
          "openssl",
          "gem",
          "nginx",
          "foo",
          "bar",
          "build-essential"
        ]

**Response**

This method has no response body.

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Response Code
     - Description
   * - ``200``
     - |response code 200 ok|