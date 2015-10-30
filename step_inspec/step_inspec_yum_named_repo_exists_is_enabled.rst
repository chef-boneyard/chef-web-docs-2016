.. This is an included how-to. 

.. To test if the 'base/7/x86_64' repo exists and is enabled:

.. code-block:: ruby

   describe yum do
     its('repos') { should include 'base/7/x86_64' }
     its('epel') { should exist }
     its('epel') { should be_enabled }
   end
