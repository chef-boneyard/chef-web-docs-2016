.. This is an included how-to. 

To use the |resource template| resource with a |bluepill| application:

.. code-block:: ruby

   template "/etc/bluepill/my_app.pill" do
     source "my_app.pill.erb"
   end
   my_app.pill.erb
   Bluepill.application("my_app") do |app|
     app.process("my_app") do |process|
       process.pid_file = "/var/run/my_app.pid"
       process.start_command = "/usr/bin/my_app"
     end
   end
