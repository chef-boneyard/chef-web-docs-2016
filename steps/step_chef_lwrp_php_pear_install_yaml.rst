.. This is an included how-to. 

To install the YAML pear from the symfony project

.. code-block:: ruby

   sc = php_pear_channel "pear.symfony-project.com" do
     action :discover
   end
   php_pear "YAML" do
     channel sc.channel_name
     action :install
   end
