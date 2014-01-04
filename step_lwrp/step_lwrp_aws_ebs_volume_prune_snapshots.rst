.. This is an included how-to. 

.. To prune all snapshots (except for one):

.. code-block:: ruby

   aws_ebs_volume "prune_snapshots" do
     aws_access_key aws['aws_access_key_id']
     aws_secret_access_key aws['aws_secret_access_key']
     volume_id "vol-ABCDEF12" # must specify the volume ID to prune
     snapshots_to_keep 1
     action :prune
   end
