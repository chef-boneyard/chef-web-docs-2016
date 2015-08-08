.. This is an included how-to. 

.. To delete an Amazon S3 bucket:

.. code-block:: ruby

   require 'chef/provisioning/aws_driver'
   with_driver 'aws'
   
   aws_s3_bucket 'aws-bucket' do
     action :destroy
   end
