.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The syntax for an |ohai| plugin is as follows:

.. code-block:: ruby

   Ohai.plugin(:Name) do
     include Ohai::Name
     provides "attribute", "attribute/subattribute"
     require_plugin "plugin_name"
     
     # Ruby code that defines the plugin

   end

where 

* Required. ``(:Name)`` is used to identify the plugin; when two plugins have the same ``(:Name)``, those plugins are joined together and run as if they were a single plugin. This value must be a valid |ruby| class name, starting with a capital letter and containing only alphanumeric characters
* ``include`` is a standard |ruby| method that allows an |ohai| plugin to include a class, such as ``Ohai::Mixin::ModuleName``
* Required. ``provides`` is a comma-separated list of one (or more) attributes that are defined by this plugin; a sub-attribute can also be defined using the ``attribute/subattribute`` pattern
* ``require_plugin`` is another |ohai| plugin that is required by this plugin
