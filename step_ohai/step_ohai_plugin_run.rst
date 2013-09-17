.. This is an included how-to. 

To run an |ohai| plugin independently of a |chef client| run, ensure that the plugin is in the ``plugins`` directory and then use |ruby irb| to run the plugin:

.. code-block:: bash

   $ require 'ohai'
   $ Ohai::Config[:plugin_path] << './plugins'
   $ o = Ohai::System.new
   $ o.all_plugins
   $ o.plugin_name
