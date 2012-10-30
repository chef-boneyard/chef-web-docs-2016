.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

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

.. code-block:: xml

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
     - |response code 200 ok| One or more cookbooks were returned as a result of the search query.