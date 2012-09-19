.. This is an included how-to. 

If you want to install an application that has already been downloaded (not using the source parameter), copy it to the appropriate location. You can find out what directory this is with the following command on the node to run chef:

.. code-block:: bash

   knife exec -E 'p Chef::Config[:file_cache_path]' -c /etc/chef/client.rb
