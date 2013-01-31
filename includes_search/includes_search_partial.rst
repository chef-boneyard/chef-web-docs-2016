.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A partial search query allows a search query to be made against specific attribute keys that are stored on the |chef server|. A partial search query can search the same set of objects on the |chef server| as a full search query, including specifying an object index and providing a query that can be matched to the relevant index. While a full search query will return an array of objects that match (each object containing a full set of attributes for the node), a partial search query will return only the values for the attributes that match. One primary benefit of using a partial search query is that it requires less memory and network bandwidth while the |chef client| processes the search results.

To create a partial search query, use the ``partial_search`` method, and then specify the key paths for the attributes to be returned. Each key path should be specified as an array of strings and is mapped to an arbitrary short name. For example:

.. code-block:: ruby

   partial_search(:node, 'role:web',
     :keys => { 'name' => [ 'name' ],
                'ip'   => [ 'ipaddress' ],
                'kernel_version' => [ 'kernel', 'version' ]
              }
   ).each do |result|
     puts result['name']
     puts result['ip']
     puts result['kernel_version']
   end

In the previous example, two attributes will be extracted (on the |chef server|) from any node that matches the search query. The result will be a simple hash with keys ``name``, ``ip``, and ``kernel_version``.