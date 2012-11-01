.. This is an included how-to. 

To assign a set of tags to multiple resources, for example more than one |amazon ebs| volume in a disk set:

.. code-block:: ruby

   aws_resource_tag 'my awesome raid set' do
     aws_access_key aws['aws_access_key_id']
     aws_secret_access_key aws['aws_secret_access_key']
     resource_id [ "vol-d0518cb2", "vol-fad31a9a", "vol-fb106a9f", "vol-74ed3b14" ]
       tags({"Name" => "My awesome RAID disk set",
             "Environment" => node.chef_environment})
   end



