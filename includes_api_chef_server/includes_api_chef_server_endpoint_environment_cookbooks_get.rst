.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The GET method is used to get a list of cookbooks and cookbook versions that are available to the specified environment.

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Parameter
     - Description
   * - ``num_versions=n``
     - The number of cookbook versions to include in the response, where ``n`` is the number of cookbook versions. For example: ``num_versions=3`` will return the three latest versions, in descending order (newest to oldest). Use ``num_versions=all`` to return all cookbook versions. If ``num_versions`` is not specified, it will return a single cookbook version. ``0`` is an invalid input (it will return an empty array for the versions of each cookbook).

**Request**

.. code-block:: xml

   GET /environments/:environment_id/cookbooks

**Response**

The response will return something like the following:

.. code-block:: javascript

   {
     "apache2" => {
       "url" => "http://localhost:4000/cookbooks/apache2",
       "versions" => [
         {"url" => "http://localhost:4000/cookbooks/apache2/5.1.0",
          "version" => "5.1.0"},
         {"url" => "http://localhost:4000/cookbooks/apache2/4.2.0",
          "version" => "4.2.0"}
       ]
     },
     "nginx" => {
       "url" => "http://localhost:4000/cookbooks/nginx",
       "versions" => [
         {"url" => "http://localhost:4000/cookbooks/nginx/1.0.0",
          "version" => "1.0.0"},
         {"url" => "http://localhost:4000/cookbooks/nginx/0.3.0",
          "version" => "0.3.0"}
       ]
     }
   }

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Response Code
     - Description
   * - ``200``
     - |response code 200 ok|
   * - ``410``
     - |response code 401 unauthorized|
   * - ``403``
     - |response code 403 forbidden|
