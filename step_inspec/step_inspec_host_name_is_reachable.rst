.. This is an included how-to. 

.. To verify host name is reachable over a specific protocol and port number:

.. code-block:: ruby

   describe host('example.com', port: 53, proto: 'udp') do
     it { should be_reachable }
   end
