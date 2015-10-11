.. This is an included how-to. 

To change the directory in which plugins are located edit the attributes file in the ``ohai`` cookbook for the ``node[:ohai][:plugin_path]`` attribute. Change the value to the desired directory path. For example:

.. code-block:: ruby

   default[:ohai][:plugin_path] = "/etc/chef/ohai_plugins"
