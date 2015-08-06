.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The following code shows the start handler used by the |reporting| add-in for the |chef server|:

.. code-block:: ruby

   require 'chef/handler'
   require 'chef/rest'
   require 'chef/version_constraint'
   
   class Chef
     class Reporting
       class StartHandler < ::Chef::Handler
   
         attr_reader :config
   
         def initialize(config={})
           @config = config
         end
   
         def report
           version_checker = Chef::VersionConstraint.new('< 11.6.0')
           if version_checker.include?(Chef::VERSION)
             Chef::Log.info('Enabling backported resource reporting Handler')
             rest = Chef::REST.new(Chef::Config[:chef_server_url], @run_status.node.name, Chef::Config[:client_key])
             resource_reporter = Chef::Reporting::ResourceReporter.new(rest)
             @run_status.events.register(resource_reporter)
   
             resource_reporter.run_started(@run_status)
           else
            Chef::Log.debug('Chef Version already has new Resource Reporter - skipping startup of backport version')
           end
         end
       end
     end
   end
