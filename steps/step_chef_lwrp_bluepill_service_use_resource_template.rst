.. This is an included how-to. 

Example: template resource in the example recipe

.. code-block:: ruby

   template "/etc/bluepill/my_app" do
     source "my_app.pill.erb"
   end
   my_app.pill.erb
   Bluepill.application("my_app") do |app|
     app.process("my_app") do |process|
       process.pid_file = "/var/run/my_app.pid"
       process.start_command = "/usr/bin/my_app"
     end
   end
