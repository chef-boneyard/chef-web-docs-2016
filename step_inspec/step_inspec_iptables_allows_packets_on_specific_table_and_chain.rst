.. This is an included how-to. 

.. To test if the IP table allows a packet through, for a specific table and chain:

.. code-block:: ruby

   describe iptables(table:'mangle', chain: 'input') do
     it { should have_rule('-P INPUT ACCEPT') }
   end
