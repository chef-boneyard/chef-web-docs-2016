.. This is an included how-to. 

.. To associate an elastic IP address with a machine:

.. code-block:: ruby

   require 'chef/provisioning/aws_driver'
   
   with_driver 'aws::us-west-2' do
   
     machine "SRV_OR_Web_1" do
       machine_options :bootstrap_options => {
         :key_name => 'Tst_Prov'
       }
     end
   
     aws_eip_address "Web_IP_1" do
       machine "SRV_OR_Web_1"
     end
   end
