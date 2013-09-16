.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The syntax for an |ohai| plugin is as follows:

.. code-block:: ruby

   require "ohai_plugin"
   
   Ohai.plugin(:Name) do
     include xxxxx
     provides "xxxxx", "xxxxx"
     depends "xxxx", "xxxxx"
     
     def shared_method(param)
       # shared methods
     end

     collect_data(:default) do
       # some Ruby code
     end

     collect_data(:platform) do
       # some Ruby code
     end

     collect_data(:platform...) do
       # some Ruby code
       Ohai::Log.log_type "log_message"
     end

   end

where 

* ``(:Name)`` is used to identify the plugin; when two plugins have the same ``(:Name)``, those plugins are joined together when |ohai| runs
* ``include`` is a standard |ruby| method that allows an |ohai| plugin to include a class, such as ``Ohai::Mixin::ModuleName``
* ``provides`` is a comma-separated list of one (or more) attributes that are defined by this plugin
* ``depends`` is a comma-separated list of one (or more) attributes that are defined by a required |ohai| plugin
* ``shared_methods`` defines code that can be used by one (or more) ``collect_data`` blocks; for example, instead of defining a mash for each ``collect_data`` block, add that code as a shared method and then call it from the ``collect_data`` blocks
* ``collect_data`` is a block of |ruby| code that is called by |ohai| when it runs. Only a single ``collect_data`` block is run (even if multiple ``collect_data`` blocks exist in the plugin). Each ``collect_data`` block accepts zero (or more) platform parameters, which are matched up against the node on which the plugin is currently running and are used to determine which ``collect_data`` block to use when |ohai| runs
* ``collect_data(:default)`` is the code block that runs when a node's platform is not defined by another ``collect_data`` block
* ``collect_data(:platform)`` is a platform-specific code block that is run when a match exists with the node's platform and a platform-specific ``collect_data`` block in the plugin; only one ``collect_data`` block may exist for each platform
* ``Ohai::Log.log_type`` is used to tell the |chef client| to create a log entry, where ``log_type`` is one of the following types: ``debug``, ``info``, ``warn``, ``error``, or ``fatal``





For example, xxxxx:

.. code-block:: ruby
   
   require "sigar"
   
   Ohai.plugin do
     provides "platform", "platform_version"
   
     collect_data do
       sys = Sigar.new.sys_info
   
       platform sys.name.downcase
       platform_version sys.version
     end
   end