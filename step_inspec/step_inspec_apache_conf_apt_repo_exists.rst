.. This is an included how-to. 

.. To verify that a repository exists and is enabled:

.. code-block:: ruby

   describe apt('ppa:nginx/stable') do
     it { should exist }
     it { should be_enabled }
   end
