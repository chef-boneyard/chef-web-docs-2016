.. This is an included how-to. 

To install an application that has already been downloaded (not using the source parameter), copy it to the appropriate location. Run the following command on the node to identify the directory:

.. code-block:: bash

   knife exec -E 'p Chef::Config[:file_cache_path]' -c /etc/chef/client.rb
