.. This is an included how-to. 

.. To test if Nginx is updated to the latest stable package:

.. code-block:: ruby

   describe apt('ppa:nginx/stable') do
     it { should exist }
     it { should be_enabled }
   end
