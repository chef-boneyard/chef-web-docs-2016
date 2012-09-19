.. This is an included how-to. 

To install a |gems| file only for use in |chef| recipes:

.. code-block:: ruby

   chef_gem "right_aws" do
     action :install
   end
   
   require 'right_aws'
