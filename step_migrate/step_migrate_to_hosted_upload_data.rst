.. This is an included how-to. 

Upload data to your Hosted Chef organization. You can restore the node data using a Knife Plugin (backup_restore.rb):

.. code-block:: bash

   cd ~/path/to/chef/repo
   curl https://raw.github.com/stevendanna/knife-hacks/master/plugins/backup_restore.rb > .chef/plugins/knife/backup_restore.rb
   knife backup restore

Alternatively, can upload the data by hand:

For each of the files found in the ``nodes/`` directory of your chef backup, do the following:

.. code-block:: bash

   knife node from file /path/to/chef/backup/nodes/some_node.json

Running this command will repopulate the newly created nodes with their previous run_list and attributes.

From a chef repository configured to use hosted chef and containing all of your cookbooks do:

.. code-block:: bash

   knife cookbook upload -a

For each of the files found in the ``roles/`` directory of your chef backup, do the following:

.. code-block:: bash

   knife role from file /path/to/chef/backup/roles/some_role.json

For each of the files found in the ``data_bags/`` directory of your chef backup, do the following:

.. code-block:: bash

   knife data bag from file /path/to/chef/backup/data_bags/some_bag.json



