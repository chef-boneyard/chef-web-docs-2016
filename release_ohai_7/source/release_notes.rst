=====================================================
Release Notes: |ohai 7|
=====================================================

.. include:: ../../includes_ohai/includes_ohai.rst

.. warning:: |ohai 7| is planned to be fully integrated into the |chef client| starting with the 11.12.0 release (~April 2014).

Supported Platforms
=====================================================
.. include:: ../../includes_supported_platforms/includes_supported_platforms_ohai.rst

What's New
=====================================================
|ohai 7| introduces two major changes. The short version:

* **New DSL** New features like ``collect_data()`` blocks and ``depends`` / ``provides`` statements make it easier to build plugins for platform-specific situations.
* **Attribute name-based user interaction** Only specify the name of the attribute; |ohai 7| will figure out which plugins are required to collect that data. 

|ohai 7| is backwards compatible with existing |ohai 6| plugins; however, none of the new (or future) functionality will be made available to |ohai 6| plugins. It is recommended that all |ohai 6| plugins be updated for the new |ohai 7| functionality as soon as possible. When migrating |ohai| 6 plugins to |ohai 7|, consider the following:

* Pick a name for the existing plugin, and then define it as an |ohai 7| plugin
* Convert the ``required_plugin()`` calls to ``depends`` statements
* Move the |ohai 6| plugin logic into a ``collect_data()`` block

For example, |ohai 7|:

.. code-block:: ruby

   provides 'my_app'
   
   require_plugin("kernel")
   
   my_app Mash.new
   my_app[:version] = shell_out("my_app -v").stdout
   my_app[:message] = "Using #{kernel[:version]}"

and then |ohai 7|:

.. code-block:: ruby

   Ohai.plugin(:MyAPP) do
     provides 'my_app'
     depends 'kernel'
   
     collect_data do
       my_app Mash.new
       my_app[:version] = shell_out("my_app -v").stdout
       my_app[:message] = "Using #{kernel[:version]}"
     end
   end


The |ohai 7| DSL
-----------------------------------------------------
|ohai 6| had a key architectural limitation that treated a plugin as a monolithic block of code. This blocked the ability to implement improvements, such as differentiating data that was collected by |ohai| as critical or optional. |ohai 7| introduces a new DSL that makes it easier to write custom plugins with better code organization.

Two important pieces of this DSL:

* ``collect_data()`` blocks enable better organization for platform-specific situations
* ``depends`` and ``provides`` statements enable easier dependency management among plugins

Attribute name-based user interaction
-----------------------------------------------------
|ohai 6| required users to know the file path for each plugin in order to use it. |ohai 7| only requires users to know the attribute for which |ohai| should collect data. |ohai 7| will figure out where the required plugins are located.
