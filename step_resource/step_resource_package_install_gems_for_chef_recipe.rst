.. This is an included how-to. 

.. To install a |gem| only for use in recipes:

.. code-block:: ruby

   chef_gem 'right_aws' do
     action :install
   end
   
   require 'right_aws'
