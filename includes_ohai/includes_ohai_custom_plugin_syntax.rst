.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The syntax for an |ohai| plugin is as follows:

.. code-block:: ruby

   Ohai.plugin(:Name) do
     include Ohai::Class::Name
     provides "attribute", "attribute/subattribute"
     depends "attribute", "attribute"
     
     def shared_method(param)
       # shared methods
     end

     collect_data(:default) do
       # some Ruby code
     end

     collect_data(:platform) do
       require "platform_specific_requirement"
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
* ``provides`` is a comma-separated list of one (or more) attributes that are defined by this plugin; a sub-attribute can also be defined using the ``attribute/subattribute`` pattern
* ``depends`` is a comma-separated list of one (or more) attributes that are collected by another plugin
* ``shared_methods`` defines code that can be used by one (or more) ``collect_data`` blocks; for example, instead of defining a mash for each ``collect_data`` block, add that code as a shared method and then call it from the ``collect_data`` blocks
* ``collect_data`` is a block of |ruby| code that is called by |ohai| when it runs. Only a single ``collect_data`` block is run (even if multiple ``collect_data`` blocks exist in the plugin). Each ``collect_data`` block accepts zero (or more) platform parameters, which are matched up against the node on which the plugin is currently running and are used to determine which ``collect_data`` block to use when |ohai| runs
* ``collect_data(:default)`` is the code block that runs when a node's platform is not defined by another ``collect_data`` block
* ``collect_data(:platform)`` is a platform-specific code block that is run when a match exists with the node's platform and a platform-specific ``collect_data`` block in the plugin; only one ``collect_data`` block may exist for each platform
* ``require "platform_specific_requirement"`` is a standard |ruby| method that is used to list files that may be required by the platform; as a best practice, even though this can be defined at the top of the file (which is a standard approach with |ruby| code), it is recommended that platform-specific requirements be grouped under the corresponding platform-specific ``collection_data`` block; an error will be generated if a file is required, but |ohai| cannot find it
* ``Ohai::Log.log_type`` is used to tell the |chef client| to create a log entry, where ``log_type`` is one of the following types: ``debug``, ``info``, ``warn``, ``error``, or ``fatal``


For example, the following plugin looks up data on virtual machines hosted in |amazon ec2|, |google compute engine|, |rackspace|, |eucalyptus|, |linode|, |openstack|, and |windows azure|:

.. code-block:: ruby

   Ohai.plugin do
     provides "cloud"
   
     depends "ec2"
     depends "gce"
     depends "rackspace"
     depends "eucalyptus"
     depends "linode"
     depends "openstack"
     depends "azure"
   
     def create_objects
       cloud Mash.new
       cloud[:public_ips] = Array.new
       cloud[:private_ips] = Array.new
     end

     ...

     def on_gce?
       gce != nil
     end
     def get_gce_values
       cloud[:public_ipv4] = []
       cloud[:local_ipv4] = []
     
       public_ips = gce['network']["networkInterface"].collect do |interface|
         if interface.has_key?('accessConfiguration')
           interface['accessConfiguration'].collect{|ac| ac['externalIp']}
         end
       end.flatten.compact
   
       private_ips = gce['network']["networkInterface"].collect do |interface|
         interface['ip']
       end.compact
       
       cloud[:public_ips] += public_ips
       cloud[:private_ips] += private_ips
       cloud[:public_ipv4] +=  public_ips
       cloud[:public_hostname] = nil
       cloud[:local_ipv4] += private_ips
       cloud[:local_hostname] = gce['hostname']
       cloud[:provider] = "gce"
     end
   
     ...

     # similar code blocks for each cloud provider

where 

* ``provides`` defines the ``cloud`` attribute, which is then turned into an object using the ``create_objects`` method and generates a hash based on public or private IP addresses
* if the cloud provider is |google compute engine|, then based on the IP address for the node, the ``cloud`` attribute data is populated

To see the rest of the code in this plugin, go to : https://github.com/opscode/ohai/blob/master/lib/ohai/plugins/cloud.rb.
