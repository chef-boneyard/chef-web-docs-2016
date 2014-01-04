.. This is an included how-to. 

.. To disassociate an IP address:

.. code-block:: ruby

   aws_elastic_ip "eip_load_balancer_production" do
     aws_access_key aws['aws_access_key_id']
     aws_secret_access_key aws['aws_secret_access_key']
     ip "192.123.4.56"
     action :disassociate
   end
