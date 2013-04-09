.. This is an included how-to. 

By default, notifications are ``:delayed``, that is they are queued up as they are triggered, and then executed at the very end of a |chef| run. To run an action immediately, use ``:immediately``:

.. code-block:: ruby

   template "/etc/nagios3/configures-nagios.conf" do
     # other parameters
     notifies :run, "execute[test-nagios-config]", :immediately
   end

and then |chef| would immediately run the following:

.. code-block:: ruby

   execute "test-nagios-config" do
     command "nagios3 --verify-config"
     action :nothing
   end
