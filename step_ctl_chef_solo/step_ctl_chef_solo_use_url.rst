.. This is an included how-to. 

.. To use a URL:

.. code-block:: bash

   $ chef-solo -c ~/solo.rb -j ~/node.json -r http://www.example.com/chef-solo.tar.gz

where ``-r`` uses the |resource remote_file| resource to retrieve the |tar gz| archive into the ``file_cache_path``, and then extract it to ``cookbooks_path``.




