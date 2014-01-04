.. This is an included how-to. 

.. To create a volume based on an existing volume snapshot:

.. code-block:: ruby

   aws_ebs_volume "db_ebs_volume_from_snapshot" do
     aws_access_key aws['aws_access_key_id']
     aws_secret_access_key aws['aws_secret_access_key']
     size 50
     device "/dev/sdi"
     snapshot_id "snap-ABCDEFGH" # creates a new volume based on this snapshot
     action [ :create, :attach ]
   end
