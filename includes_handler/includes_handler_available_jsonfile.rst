.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``JsonFile`` handler is used to serialize run status data to a |json| file. This handler needs to be enabled by adding the following lines of |ruby| code to either |client rb| or |solo rb|:

.. code-block:: ruby

   require 'chef/handler/json_file'
   report_handlers << Chef::Handler::JsonFile.new(:path => "/var/chef/reports")
   exception_handlers << Chef::Handler::JsonFile.new(:path => "/var/chef/reports")

There is a |lwrp| entry:

.. code-block:: ruby

   chef_handler "Chef::Handler::JsonFile" do
     source "chef/handler/json_file"
     arguments :path => '/var/chef/reports'
     action :enable
   end

The run status data can be loaded and inspected via |ruby irb|:

.. code-block:: ruby

   irb(main):001:0> require 'rubygems' => true
   irb(main):002:0> require 'json' => true 
   irb(main):003:0> require 'chef' => true
   irb(main):004:0> r = JSON.parse(IO.read("/var/chef/reports/chef-run-report-20110322060731.json")) => ... output truncated
   irb(main):005:0> r.keys => ["end_time", "node", "updated_resources", "exception", "all_resources", "success", "elapsed_time", "start_time", "backtrace"]
   irb(main):006:0> r['elapsed_time'] => 0.00246

