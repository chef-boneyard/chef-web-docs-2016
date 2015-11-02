.. This is an included how-to. 

.. To only accept requests on secure ports:

.. code-block:: ruby

   describe port(80) do
     it { should_not be_listening }
   end

   describe port(443) do
     it { should be_listening }
     its('protocol') {should eq 'tcp'}
   end
