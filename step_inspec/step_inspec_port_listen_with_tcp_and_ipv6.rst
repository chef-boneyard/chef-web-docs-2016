.. This is an included how-to. 

.. To test port 80, listening with TCP version IPv6 protocol:

.. code-block:: ruby

   describe port(80) do
     it { should be_listening }
     its('protocol') {should eq 'tcp6'}
   end
