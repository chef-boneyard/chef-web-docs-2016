.. This is an included how-to. 


A template helper method is always defined inline on a per-resource basis. A simple example:

.. code-block:: ruby

   template "/path" do
     helper(:hello_world) { "hello world" }
   end

Another way to define an inline helper method is to reference a node object so that repeated calls to one (or more) cookbook attributes can be done efficiently:

.. code-block:: ruby

   template "/path" do
     helper(:app) { node["app"] }
   end

An inline helper method can also take arguments:

.. code-block:: ruby

   template "/path" do
     helper(:app_conf) { |setting| node["app"][setting] }
   end

Once declared, a template can then use the helper methods to build a file. For example:

.. code-block:: ruby

   Say hello: <%= hello_world %> 

Or:

.. code-block:: ruby

   node["app"]["listen_port"] is: <%= app["listen_port"] %>

Or:

.. code-block:: ruby

   node["app"]["log_location"] is: <%= app_conf("log_location") %>

.. note:: This example and the example for an inline helper module are identical, with one being defined inline as a method and the other being defined inline as a module.