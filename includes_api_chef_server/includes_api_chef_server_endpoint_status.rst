.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``/_status`` endpoint can be used to check the status of communications between the front and back end servers. This endpoint is located at ``/_status`` on the front end servers. 

**Request**

.. code-block:: xml

   api.get("https://chef_server.front_end.url/_status")

This method has no request body.

**Response**

The response will return something like the following:

.. code-block:: javascript

   {
     "status" => "pong", 
     "upstreams" => 
       {
         "service_name" => "pong", 
         "service_name" => "pong", 
         ...
       }
    }

**Response Codes**

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Response Code
     - Description
   * - ``200``
     - All communications are OK. 
   * - ``500``
     - One (or more) services are down. For example:
       
       .. code-block:: javascript
       
          {
            "status":"fail",
            "upstreams":
              {
                "service_name":"fail",
                "service_name":"pong",
                ...
              }
          }
