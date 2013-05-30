.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``GET`` method is used to get a listing of the available cookbooks..

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

.. code-block:: xml

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
     - |response code 200 ok| One or more cookbooks were returned as a result of the search query.