.. This is an included how-to. 

To open standard ssh port, enable firewall

.. code-block:: ruby

   firewall_rule "ssh" do
     port 22
     action :allow
     notifies :enable, "firewall[ufw]"
   end
