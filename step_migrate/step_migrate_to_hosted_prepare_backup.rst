.. This is an included how-to. 

Download the ``backup_export.rb`` |knife| plugin:

.. code-block:: bash

   cd ~/path/to/chef/repository
   mkdir -p .chef/plugins/knife
   curl https://raw.github.com/stevendanna/knife-hacks/master/plugins/backup_export.rb > .chef/plugins/knife/backup_export.rb

Run this plugin to back up the |chef server|:

.. code-block:: bash

   knife backup export

This will export all data bags, roles, environments, and nodes that are stored on the |chef server|, saving them as |json| files within the ``.chef/chef_server_backup`` directory. These files will be uploaded to |chef hosted| later in this process.



