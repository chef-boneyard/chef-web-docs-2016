.. This is an included how-to. 

.. To test a cookbook version in a policyfile.lock.json file:

.. code-block:: ruby

   describe json('policyfile.lock.json') do
     its('cookbook_locks.omnibus.version') { should eq('2.2.0') }
   end
