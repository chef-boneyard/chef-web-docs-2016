.. This is an included how-to. 

To change the directory in which plugins are located edit the cookbook attributes file and change the path for the ``node[:ohai][:plugin_path]`` attribute. For example:

.. code-block:: ruby

   default[:ohai][:plugin_path] = "/etc/chef/ohai_plugins"
