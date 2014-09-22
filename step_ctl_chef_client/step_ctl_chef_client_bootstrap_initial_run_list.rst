.. This is an included how-to. 


A node's initial run-list is specified using a |json| file on the host system. When running the |chef client| as an executable, use the ``-j`` option to tell the |chef client| which |json| file to use. For example:

.. code-block:: bash

   $ chef-client -j /etc/chef/file.json

where ``file.json`` is similar to:

.. code-block:: javascript

   {
     "resolver": {
       "nameservers": [ "10.0.0.1" ],
       "search":"int.example.com"
     },
     "run_list": [ "recipe[resolver]" ]
   }