.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The results of a search query can be loaded into a recipe. For example, a very simple search query (in a recipe) might look like this::

   search(:node, 'attribute:value')

A search query can be assigned to variables and then used elsewhere in a recipe. For example, to search for all nodes that have a role assignment named ``webserver``, and then render a template which includes those role assignments:

.. code-block:: ruby

   webservers = search(:node, 'role:webserver')
   
   template '/tmp/list_of_webservers' do
     source 'list_of_webservers.erb'
     variables(:webservers => webservers)
   end
