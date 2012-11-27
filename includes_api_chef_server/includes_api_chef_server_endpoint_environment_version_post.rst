.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The POST method is used to return a hash of the cookbooks and cookbook versions (including all dependencies) that are required by the run_list array. Version constraints may be specified using the ``@`` symbol after the cookbook name as a delimiter. Version constraints may also be present when the ``cookbook_versions`` attributes is specified for an environment or when dependencies are specified by a cookbook.

This method has no parameters.

**Request**

.. code-block:: xml

   POST /environments/NAME/cookbook_versions

with a request body that looks something like:

.. code-block:: javascript

   {
     "run_list": [
       "zed@0.0.1",
       "bar",
       "mysql",
       "gem",
       "nginx@0.99.2",
       "cron",
       "foo"
     ]
   }

where ``@x.x.x`` represents a constraint for a cookbook version.

**Response**

The response will return a list of cookbooks that are required by the run-list array contained in the request. The cookbooks that are returned are often the latest versions of each cookbook. Depending on any constraints present in the request or on dependencies a cookbook may have for specific cookbook versions, a request may not always return the latest cookbook version for each cookbook.

A response looks something like the following:

.. code-block:: javascript

   {
     "mysql": "1.2.2",
     "runit": "2.0.0",
     "zed": "0.0.1",
     "cron": "10.1.0",
     "openssl": "3.1.4",
     "gem": "0.9.9",
     "nginx": "0.99.2",
     "foo":
     "0.0.1",
     "bar": "0.5.0",
     "build-essential": "0.4.2"
   }

**Response Codes**

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Response Code
     - Description
   * - ``200``
     - |response code 200 ok|
   * - ``400``
     - |response code 400 bad request|
   * - ``401``
     - |response code 401 unauthorized|
   * - ``403``
     - |response code 403 forbidden|
   * - ``404``
     - |response code 404 not found|
   * - ``412``
     - |response code 412 cookbook version|
