.. This is an included how-to. 

To disable an |ohai| plugin, add the following code to the |client rb| file:

.. code-block:: ruby

   Ohai::Config[:disabled_plugins] = ["plugin_name", "plugin_name"]

where ``plugin_name`` is a comma-delimited list of |ohai| plugins to be disabled. For example:

.. code-block:: ruby

   Ohai::Config[:disabled_plugins] = ["passwd", "rackspace", "dmi", "dmi_common"]

