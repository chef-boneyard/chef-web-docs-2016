.. This is an included how-to. 

.. To use a URL:

.. code-block:: bash

   $ chef-solo -c ~/solo.rb -j ~/node.json -r http://www.example.com/chef-solo.tar.gz

The |tar gz| archived into the ``file_cache_path``, and then extracted to ``cookbooks_path``.




