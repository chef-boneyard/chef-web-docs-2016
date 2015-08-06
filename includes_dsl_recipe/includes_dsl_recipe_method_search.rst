.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use the ``search`` method to perform a search query against the |chef server| from within a recipe.

The syntax for the ``search`` method is as follows:

.. code-block:: ruby

   search(:index, 'query')

where:

* ``:index`` is of name of the index on the |chef server| against which the search query will run: ``:client``, ``:data_bag_name``, ``:environment``, ``:node``, and ``:role``
* ``'query'`` is a valid search query against an object on the |chef server| (see below for more information about how to build the query)

For example, using the results of a search query within a variable:

.. code-block:: ruby

   webservers = search(:node, 'role:webserver')

and then using the results of that query to populate a template:

.. code-block:: ruby

   template '/tmp/list_of_webservers' do
     source 'list_of_webservers.erb'
     variables(:webservers => webservers)
   end
