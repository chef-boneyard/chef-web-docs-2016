.. This is an included how-to. 

.. To verify that a specific IP address can be resolved:

.. code-block:: ruby

   describe host('example.com', port: 80, proto: 'tcp') do
     it { should be_resolvable }
     its('ipaddress') { should include '192.168.1.1' }
   end
