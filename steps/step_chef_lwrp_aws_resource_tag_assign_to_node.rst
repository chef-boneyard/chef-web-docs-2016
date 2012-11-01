.. This is an included how-to. 

To assign tags to a node to reflect it's role and environment:

.. code-block:: ruby

   aws_resource_tag node['ec2']['instance_id'] do
     aws_access_key aws['aws_access_key_id']
     aws_secret_access_key aws['aws_secret_access_key']
     tags({"Name" => "www.example.com app server",
           "Environment" => node.chef_environment})
     action :update
   end



