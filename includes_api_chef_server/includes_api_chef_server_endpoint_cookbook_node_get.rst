.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The GET method is used to return a complete list of cookbook attributes, definitions, libraries, and recipes that are required for this node.

**Request**

.. code-block:: xml

   GET /nodes/NODE_NAME/cookbooks

This method should not have a request body.

**Response**

The response will return something like the following:

.. code-block:: javascript

   {
     "foo": {
       "attributes": [], 
       "chef_type": "cookbook_version", 
       "cookbook_name": "foo", 
       "definitions": [], 
       "files": [], 
       "frozen?": false, 
       "json_class": "Chef::CookbookVersion", 
       "libraries": [], 
       "metadata": {
         "attributes": {}, 
         "conflicting": {}, 
         "dependencies": {}, 
         "description": "Installs/Configures foo", 
         "groupings": {}, 
         "license": "All rights reserved", 
         "long_description": "Description\n===========\n\nRequirements\n============\n\nAttributes\n==========\n\nUsage\n=====\n\n", 
         "maintainer": "YOUR_COMPANY_NAME", 
         "maintainer_email": "YOUR_EMAIL", 
         "name": "foo", 
         "platforms": {}, 
         "providing": {"foo": ">= 0.0.0"}, 
         "recipes": {"foo": ""}, 
         "recommendations": {}, 
         "replacing": {}, 
         "suggestions": {}, 
         "version": "0.0.1"
       }, 
       "name": "foo-0.0.1", 
       "providers": [], 
       "recipes": [
         {
           "checksum": "1988cb67aac2685ef76f2802fcf0d0d9", 
           "name": "default.rb", 
           "path": "recipes/default.rb", 
           "specificity": "default", 
           "url": "https://URLTOFILE"
         }
       ], 
       "resources": [], 
       "root_files": [], 
       "templates": [], 
       "version": "0.0.1"
     }
   }

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Response Code
     - Description
   * - ``200``
     - |response code 200 ok|
   * - ``401``
     - |response code 401 unauthorized|
   * - ``404``
     - |response code 404 not found|