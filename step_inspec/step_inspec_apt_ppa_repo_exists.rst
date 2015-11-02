.. This is an included how-to. 

.. To test if a PPA repository exists and is enabled:

.. code-block:: ruby

   describe apt('ppa:nginx/stable') do
     it { should exist }
     it { should be_enabled }
   end
