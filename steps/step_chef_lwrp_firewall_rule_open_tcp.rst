.. This is an included how-to. 

To open standard http port to tcp traffic only; insert as first rule; enable firewall

.. code-block:: ruby

   firewall_rule "http" do
     port 80
     protocol :tcp
     position 1
     action :allow
     notifies :enable, "firewall[ufw]"
   end
