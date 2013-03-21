.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The GET method is used to return a list of recipes available to a given environment.

This method has no parameters.

**Request**

.. code-block:: xml

   GET /environments/NAME/recipes

where the first instance of ``NAME`` is the name of the environment, and the second instance is the name of the recipe.

**Response**

The response will return something like the following:

.. code-block:: javascript

   [
     "ant",
     "apache2",
     "apache2::mod_auth_openid",
     "apache2::mod_authnz_ldap",
     "apt",
     "aws",
     "capistrano",
     "chef",
     "chef::bootstrap_client",
     "chef-client::config",
     "chef-client",
     ...
   ]

The list of recipes will be the default recipes for a given cookbook. If an environment has multiple versions of a cookbook that matches its constraints, only the recipes from the latest version of that cookbook will be reported.

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
