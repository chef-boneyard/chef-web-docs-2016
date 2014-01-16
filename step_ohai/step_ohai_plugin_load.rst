.. This is an included how-to. 

To load an |ohai| plugin, add the following setting to the end of the |client rb| file:

.. code-block:: ruby
   
   Ohai::Config[:plugin_path]
   
where ``plugin_path`` is the path to the directory in which |ohai| plugins are located, typically ``/etc/ohai/plugins``. 

Test each plugin by running the following command:

.. code-block:: bash

   ohai -d plugin_path

For example:

.. code-block:: bash

   ohai -d /etc/ohai/plugins
