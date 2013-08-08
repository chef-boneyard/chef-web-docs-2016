.. This is an included how-to.

.. To use a URL for cookbook and |json| data:

.. code-block:: bash

   $ chef-solo -c ~/solo.rb -j http://www.example.com/node.json -r http://www.example.com/chef-solo.tar.gz

where ``-r`` corresponds to ``recipe_url`` and ``-j`` corresponds to ``json_attribs``, both of which are configuration options in |solo rb|.





