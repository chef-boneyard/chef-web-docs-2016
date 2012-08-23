=====================================================
Cookbooks Site API
=====================================================
 
.. include:: ../../swaps/swap_descriptions.txt
.. include:: ../../swaps/swap_names.txt

.. include:: ../../includes/includes_chef_cookbook.rst

.. include:: ../../includes/includes_api_cookbooks_site.rst

.. note:: In general, using |knife| (and the ``knife cookbook site`` sub-command) to manage cookbooks that are located on the COOKBOOKS SITE is more efficient than using the COOKBOOKS SITE API. Using |knife| to manage cookbooks that are located on the COOKBOOKS SITE is recommended. This document provides information about the COOKBOOKS SITE API in the even that using the API is necessary.

/cookbooks
=====================================================
.. include:: ../../includes/includes_chef_cookbook.rst

The /cookbooks endpoint has the following methods: GET and POST.

POST -- "DONE" (NO DOCS ON WIKI)
-----------------------------------------------------
The POST method is used to create a new cookbook.

This method has no parameters.

**Request**

.. code-block:: ruby

   POST /cookbooks/COOKBOOK_NAME

**Response**

The response will return something like the following:

.. code-block:: ruby

   {
     response_placeholder
   }

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Response Code
     - Description
   * - ``200``
     - The request was successful. The cookbook was posted to the |api cookbooks site|.
   * - ``400``
     - The request was unsuccessful. The cookbook was not posted to the |api cookbooks site|. For example:
       ::

          {
             "error_messages":
             ["Resource does not exist"],
             "error_code": "NOT_FOUND"
          }

GET -- DONE
-----------------------------------------------------
The GET method is used to get a listing of the available cookbooks..

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Parameter
     - Description
   * - ``start``
     - The offset into a list of cookbooks, at which point the list of cookbooks will begin.
   * - ``items``
     - The number of items to be returned as a result of the request.

.. note:: Using ``items`` and ``start`` can be helpful when the number of cookbooks returned is more than what is easily viewable in the returned list of cookbooks.

**Request**

.. code-block:: ruby

   GET /cookbooks?start=START&items=ITEMS

**Response**

The response will return the name of the cookbook, a description, URI, the name of the individual who maintains the cookbook. In addition, the total number of cookbooks on |api cookbooks site| is shown, as well (if ``start`` is specified) the point at which the list of returned cookbooks began:

.. code-block:: ruby

   {
      "items":
         [
           {"cookbook_name": "apache",
            "cookbook_description": "installs apache.",
            "cookbook": "http://cookbooks.opscode.com/api/v1/cookbooks/apache",
            "cookbook_maintainer": "john"
           },
           {"cookbook_name": "fail2ban",
            "cookbook_description": "installs fail2ban.",
            "cookbook": "http://cookbooks.opscode.com/api/v1/cookbooks/fail2ban",
            "cookbook_maintainer": "jill"
           },
           {"cookbook_name": "mysql",
            "cookbook_description": null,
            "cookbook": "http://cookbooks.opscode.com/api/v1/cookbooks/mysql",
            "cookbook_maintainer": "barry"
           },
           {"cookbook_name": "capistrano",
            "cookbook_description": null,
            "cookbook": "http://cookbooks.opscode.com/api/v1/cookbooks/capistrano",
            "cookbook_maintainer": "pt"
           },
           {"cookbook_name": "ptapache",
            "cookbook_description": "an alternate apache recipe.",
            "cookbook": "http://cookbooks.opscode.com/api/v1/cookbooks/ptapache",
            "cookbook_maintainer": "pt"
           }
         ],
      "total": 5234,
      "start": 20
   }

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Response Code
     - Description
   * - ``200``
     - The request was successful. One or more cookbooks were returned as a result of the search query.

/cookbooks/[NAME] -- DONE
=====================================================
The cookbooks/[NAME] endpoint allows a specific cookbook to be accessed. This endpoint has the following methods: DELETE and GET.

DELETE -- DONE
-----------------------------------------------------
The DELETE method is used to delete a cookbook. 

(**jamescott: the Wiki is blank. IF this method is valid, then I just **WILD GUESSED** below at what that might look like. IF this method is invalid, then ... remove!**)

This method has no parameters.

**Request**

.. code-block:: ruby

   DELETE /cookbooks/cookbook_name

**Response**

The response will return something like the following:

.. code-block:: ruby

   {
     response_placeholder
   }

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Response Code
     - Description
   * - ``200``
     - The request was successful. The cookbook was deleted.
   * - ``400``
     - The request was unsuccessful. The requested cookbook does not exist. For example:
       ::

          {
             "error_messages":
             ["Resource does not exist"],
             "error_code": "NOT_FOUND"
          }

GET -- DONE
-----------------------------------------------------
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
     - The request was successful. The requested cookbook exists.
   * - ``400``
     - The request was unsuccessful. The requested cookbook does not exist. For example:
       ::

          {
             "error_messages":
             ["Resource does not exist"],
             "error_code": "NOT_FOUND"
          }

/cookbooks/[VERSION] -- DONE
=====================================================
A cookbook version always takes the form x.y.z, where x, y, and z are decimal numbers that are used to represent major (x), minor (y), and patch (z) versions. A two-part version (x.y) is also allowed. When passing a cookbook version using this method, underscores ("_") should be used as the separator between versions. For example, a cookbook with a version 1.0.1 would be 1_0_1. 

The /cookbooks/[VERSION] endpoint has the following methods: GET.

GET -- DONE
-----------------------------------------------------
The GET method is used to get a specific version of a cookbook. Use ``latest`` to get the most recent version of a cookbook.

This method has no parameters.

**Request**

.. code-block:: ruby

   GET /cookbooks/COOKBOOK_NAME/versions/latest

Or:

.. code-block:: ruby

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
     - The request was successful. The requested cookbook exists.
   * - ``400``
     - The request was unsuccessful. The requested cookbook does not exist. For example:
       ::

          {
             "error_messages":
             ["Resource does not exist"],
             "error_code": "NOT_FOUND"
          }

/search -- DONE
=====================================================
.. include:: ../../includes/includes_chef_search.rst

The /search endpoint has the following methods: GET.

GET -- DONE
-----------------------------------------------------
The GET method is used to get a list of cookbooks that match a search query.

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Parameter
     - Description
   * - ``q``
     - The search query.
   * - ``start``
     - The offset into a list of cookbooks, at which point the search will begin.
   * - ``items``
     - The number of items to be returned as a result of the search query.

.. note:: Using ``items`` and ``start`` can be helpful when the number of cookbooks returned is more than what is easily viewable in the returned list of cookbooks.

**Request**

.. code-block:: ruby

   GET /search?q=SEARCH_QUERY

Or:

.. code-block:: ruby

   GET /search?q=SEARCH_QUERY&start=START&items=ITEMS

**Response**

The response will return a list of cookbooks by name and description and will return a list of cookbooks that match the search query. Each returned data set will include the name of the cookbook, a description, the URI, and the name of the individual who maintains the cookbook. In addition, the total number of cookbooks on |api cookbooks site| is shown, as well (if ``start`` is specified) the point at which the list of returned cookbooks began:

.. code-block:: ruby

   {
     "items":
      [{"cookbook_name": "apache",
        "cookbook_description": "installs a web server.",
        "cookbook": "http://cookbooks.opscode.com/api/v1/cookbooks/apache",
        "cookbook_maintainer": "jtimberman"},
       {"cookbook_name": "webserver",
        "cookbook_description": "installs apache.",
        "cookbook": "http://cookbooks.opscode.com/api/v1/cookbooks/webserver",
        "cookbook_maintainer": "raxmus"}],
     "total": 2,
     "start": 0
   }

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Response Code
     - Description
   * - ``200``
     - The request was successful. One or more cookbooks were returned as a result of the search query.