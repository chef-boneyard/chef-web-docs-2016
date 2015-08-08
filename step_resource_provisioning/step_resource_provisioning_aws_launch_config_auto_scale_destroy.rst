.. This is an included how-to. 

.. To destroy an auto scaling group:

The following example destroys an auto scaling group and the associated launch configuration:

.. code-block:: ruby

   require 'chef/provisioning/aws_driver'
   
   with_driver 'aws::eu-west-1' do
     aws_auto_scaling_group 'my-awesome-auto-scaling-group' do
       action :destroy
     end
   
     aws_launch_config 'my-sweet-launch-config' do
       action :destroy
     end
   end
