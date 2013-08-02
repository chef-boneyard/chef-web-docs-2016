.. This is an included how-to. 

To enable |windows remote desktop| and poke the firewall hole:

.. code-block:: ruby

   windows_registry 'HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server' do
    values 'FdenyTSConnections' => 0
   end
