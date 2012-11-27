.. This is an included how-to. 

Example: Assocating a new IP address The IP below is not valid in Amazon EC2, and is used just as an example.

.. code-block:: ruby

   aws_elastic_ip "eip_load_balancer_production" do
     aws_access_key aws['aws_access_key_id']
     aws_secret_access_key aws['aws_secret_access_key']
     ip "192.168.1.42"
     action :associate
   end
