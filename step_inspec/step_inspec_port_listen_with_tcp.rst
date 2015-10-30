.. This is an included how-to. 

.. To test port 80, listening with the TCP protocol:

.. code-block:: ruby

   describe port(80) do
     it { should be_listening }
     its('protocol') {should eq 'tcp'}
   end
