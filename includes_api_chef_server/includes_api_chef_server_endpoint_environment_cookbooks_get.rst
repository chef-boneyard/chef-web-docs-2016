.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``GET`` method is used to get a list of cookbooks and cookbook versions that are available to the specified environment.

This method has the following parameters:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Parameter
     - Description
   * - ``num_versions=n``
     - |num_versions|

**Request**

.. code-block:: xml

   GET /environments/NAME/cookbooks

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
