.. This is an included how-to. 

The following example shows how to open the standard HTTP port to TCP traffic only, insert as the first rule, and then enable the firewall:

.. code-block:: ruby

   firewall_rule "http" do
     port 80
     protocol :tcp
     position 1
     action :allow
     notifies :enable, "firewall[ufw]"
   end
