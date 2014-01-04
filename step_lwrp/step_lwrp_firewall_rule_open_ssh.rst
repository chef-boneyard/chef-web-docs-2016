.. This is an included how-to. 

.. To open the standard |ssh| port and enable the firewall:

.. code-block:: ruby

   firewall_rule "ssh" do
     port 22
     action :allow
     notifies :enable, "firewall[ufw]"
   end
