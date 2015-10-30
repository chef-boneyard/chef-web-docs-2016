.. This is an included how-to. 

.. To test if the IP table allows a packet through:

.. code-block:: ruby

   describe iptables do
     it { should have_rule('-P INPUT ACCEPT') }
   end
