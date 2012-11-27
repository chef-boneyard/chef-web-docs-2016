.. This is an included how-to. 

To add a load balancer to an availability zone:

.. code-block:: ruby

   aws_elastic_lb "elb_qa" do 
     aws_access_key aws['aws_access_key_id'] 
     aws_secret_access_key aws['aws_secret_access_key'] 
     name "QA" action :register
   end



