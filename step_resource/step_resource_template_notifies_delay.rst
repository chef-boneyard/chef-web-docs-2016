.. This is an included how-to. 

.. To delay running a notification:

.. code-block:: ruby

   template "/etc/nagios3/configures-nagios.conf" do
     # other parameters
     notifies :run, "execute[test-nagios-config]", :delayed
   end

