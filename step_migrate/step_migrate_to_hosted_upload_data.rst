.. This is an included how-to. 

The data must be uploaded to the |chef hosted| server. This can be done using the ``backup_restore.rb`` |knife| plugin or manually using |knife|. 

To restore data using the ``backup_restore.rb`` |knife| plugin:

.. code-block:: bash

   cd ~/path/to/chef/repo
   curl https://raw.github.com/stevendanna/knife-hacks/master/plugins/backup_restore.rb > .chef/plugins/knife/backup_restore.rb
   knife backup restore

To upload the data using |knife|, the ``knife upload`` sub-command can be used to upload everything in the |chef| repository. For example:

.. code-block:: bash

   $ knife upload

If everything should not be uploaded, or if uploads should occur by object type, then each of the object types must be loaded separately from the folders located in the backed-up data. For files in the ``nodes/`` directory, do the following:

.. code-block:: bash

   $ knife node from file /path/to/chef/backup/nodes/some_node.json

Running this command will repopulate the newly created nodes with their previous run_list and attributes. From a chef repository configured to use hosted chef and containing all of your cookbooks do:

.. code-block:: bash

   $ knife cookbook upload -a

For each of the files found in the ``roles/`` directory of your chef backup, do the following:

.. code-block:: bash

   $ knife role from file /path/to/chef/backup/roles/some_role.json

For each of the files found in the ``data_bags/`` directory of your chef backup, do the following:

.. code-block:: bash

   $ knife data bag from file /path/to/chef/backup/data_bags/some_bag.json



