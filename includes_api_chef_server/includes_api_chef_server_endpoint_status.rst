.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``/_status`` endpoint can be used to check the status of communications between the front and back end servers. This endpoint is located at ``/_status`` on the front end servers. For example:

.. code-block:: xml

   api.get("https://chef_server.front_end.url/_status")

will return something like:

.. code-block:: javascript

   {
     "status" => "pong", 
     "upstreams" => 
       {
         "chef_solr" => "pong", 
         "chef_sql" => "pong", 
         "chef_otto" => "pong", 
         "oc_chef_authz" => "pong"
       }
    }

A ``non-2xx`` response code is returned when any of the servers and/or services are down. For example:

.. code-block:: javascript

   {
     "status":"fail",
     "upstreams":
       {
         "chef_solr":"fail",
         "chef_sql":"pong",
         "chef_otto":"pong",
         "oc_chef_authz":"pong"
       }
   }
