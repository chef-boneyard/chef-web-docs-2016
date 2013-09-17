.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``collect_data`` method is a block of |ruby| code that is called by |ohai| when it runs. One (or more) ``collect_data`` blocks can be defined in a plugin, but only a single ``collect_data`` block is ever run. The ``collect_data`` block that is run is determined by the platform on which the node is running, which is then matched up against the available ``collect_data`` blocks in the plugin. 

* A ``collect_data(:default)`` block is required
* A ``collect_data(:platform)`` block is required for each platform

When |ohai| runs, if there isn't a matching ``collect_data`` block for a platform, the ``collect_data(:default)`` block is used. The syntax for the ``collect_data`` method is:

.. code-block:: ruby

   collect_data(:default) do
     # some Ruby code
   end

or: 

.. code-block:: ruby

   collect_data(:platform) do
     # some Ruby code
   end

where:

* ``:default`` is the name of the default ``collect_data`` block
* ``:platform`` is the name of the platform, such as ``:aix`` for |ibm aix| or ``:windows`` for |windows|

Some examples:

.. code-block:: ruby

   Ohai.plugin(:Azure) do
     provides "azure"
   
     collect_data do
       azure_metadata_from_hints = hint?('azure')
       if azure_metadata_from_hints
         Ohai::Log.debug("azure_metadata_from_hints is present.")
         azure Mash.new
         azure_metadata_from_hints.each {|k, v| azure[k] = v }
       else
         Ohai::Log.debug("No hints present for azure.")
         false
       end
     end
   end

or:

.. code-block:: ruby

   require 'ohai/mixin/ec2_metadata'
   extend Ohai::Mixin::Ec2Metadata
   
   Ohai.plugin do
     provides "openstack"
   
     collect_data do
       if hint?('openstack') || hint?('hp')
         Ohai::Log.debug("ohai openstack")
         openstack Mash.new
         if can_metadata_connect?(EC2_METADATA_ADDR,80)
           Ohai::Log.debug("connecting to the OpenStack metadata service")
           self.fetch_metadata.each {|k, v| openstack[k] = v }
           case
           when hint?('hp')
             openstack['provider'] = 'hp'
           else
             openstack['provider'] = 'openstack'
           end
         else
           Ohai::Log.debug("unable to connect to the OpenStack metadata service")
         end
       else
         Ohai::Log.debug("NOT ohai openstack")
       end
     end
   end


