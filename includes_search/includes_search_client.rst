.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Sometimes when a role isn't fully defined (or implemented), it may be necessary for a machine to connect to a database, search engine, or some other service within an environment by using the settings located on another machine, such as a host name, IP address, or private IP address. The following simplified settings file is for a web server named "mysqlchef" and a database server named mysqlchefutil:

.. code-block:: ruby

   username: "mysql"
   password: "MoveAlong"
   host:     "10.40.64.202"
   port:     "3306"

where ``host`` is the private IP address of the database server. Use the following |knife| query to view information about the node:

.. code-block: bash

   knife search node "name:mysqlchefutil" --long

To access these settings as part of a recipe that is run on the web server, use code similar to:

.. code-block:: ruby

   db_server = search(:node, "name:mysqlchefutil")
   private_ip = "#{db_server[0][:rackspace][:private_ip]}"
   puts private_ip

where the "[0]" is the 0 (zero) index for the db_server identifier. This is because a single document is returned because the node is being searched on its unique name. The identifier ``private_ip`` will now have the value of the private IP address of the database server (``10.40.64.202``) and can be used in templates as a variable, among other possible uses.

