.. This is an included how-to. 

.. warning:: This is an example of something that should NOT be done. Use the |resource service| resource to control a service, not the |resource execute| resource.

Do something like this:

.. code-block:: ruby

   service "tomcat" do
     action :start
   end

and NOT something like this:

.. code-block:: ruby

   execute "start-tomcat" do
     command "/etc/init.d/tomcat6 start"
     action :run
   end

There is no reason to use the |resource execute| resource to control a service because the |resource service| resource exposes the ``start_command`` attribute directly, which gives a recipe full control over the command issued in a much cleaner, more direct manner.



