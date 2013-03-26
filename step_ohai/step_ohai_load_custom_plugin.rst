.. This is an included how-to. 

Load a custom |ohai| plugin by doing the following:

#. Add the following to the end of the ``/etc/chef/client.rb`` file:

.. code-block:: ruby

   Ohai::Config[:plugin_path]
   
   where ``plugin_path`` is something like ``/etc/ohai/plugins``.

#. Test each plugin using the following:

.. code-block:: bash

   ohai -d plugin_path

   where ``plugin_path`` is each of the custom |ohai| plugins.

