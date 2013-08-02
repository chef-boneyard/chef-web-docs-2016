.. This is an included how-to. 

To create a volume and attach it to a node:

.. code-block:: ruby

   aws_ebs_volume "database_volume" do
     aws_access_key aws['aws_access_key_id']
     aws_secret_access_key aws['aws_secret_access_key']
     size 50
     device "/dev/sdm"
     action [:create, :attach]
   end
