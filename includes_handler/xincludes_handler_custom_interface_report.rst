.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``report`` interface is used to define how a handler will behave. The syntax for the ``report`` interface is as follows:

.. code-block:: ruby

   def report
     # Ruby code
   end

This will vary from handler to handler. The |chef client| includes two default handlers: ``error_report`` and ``json_file``, shown below.

The ``error_report`` handler:

.. code-block:: ruby

   require 'chef/handler'
   require 'chef/resource/directory'
   
   class Chef
     class Handler
       class ErrorReport < ::Chef::Handler 
         def report
           Chef::FileCache.store("failed-run-data.json", Chef::JSONCompat.to_json_pretty(data), 0640)
           Chef::Log.fatal("Saving node information to #{Chef::FileCache.load("failed-run-data.json", false)}")
         end
       end
    end
   end

https://github.com/opscode/chef/blob/master/lib/chef/handler/error_report.rb

The ``json_file`` handler:

.. code-block:: ruby

   require 'chef/handler'
   require 'chef/resource/directory'
   
   class Chef
     class Handler
       class JsonFile < ::Chef::Handler
         attr_reader :config
         def initialize(config={})
           @config = config
           @config[:path] ||= "/var/chef/reports"
           @config
         end
         def report
           if exception
             Chef::Log.error("Creating JSON exception report")
           else
             Chef::Log.info("Creating JSON run report")
           end
           build_report_dir
           savetime = Time.now.strftime("%Y%m%d%H%M%S")
           File.open(File.join(config[:path], "chef-run-report-#{savetime}.json"), "w") do |file|
             run_data = data
             run_data[:start_time] = run_data[:start_time].to_s
             run_data[:end_time] = run_data[:end_time].to_s
             file.puts Chef::JSONCompat.to_json_pretty(run_data)
           end
         end
         def build_report_dir
           unless File.exists?(config[:path])
             FileUtils.mkdir_p(config[:path])
             File.chmod(00700, config[:path])
           end
         end
       end
     end
   end

https://github.com/opscode/chef/blob/master/lib/chef/handler/json_file.rb