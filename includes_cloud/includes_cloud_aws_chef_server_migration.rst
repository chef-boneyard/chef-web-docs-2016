.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The process of migrating from and existing |chef server| installation to the |amazon ami| differs depending on which software version you're using and where you have it deployed.  In all on premises scenarios we'll first migrate the data to the latest |chef server| schema and then migrate it to the |amazon ami|.

Migrate data to the latest |chef server_title| version
-----------------------------------------------------
##### |chef server_title|
#. Verify that you've got the latest version of |chef server| installed using your package manager ``rpm -qa | grep chef-server-core`` and the latest version on available on our `downloads site. <https://www.downloads.chef.io>`__  If you're not running the latest version please download and package and `upgrade <http://docs.chef.io/upgrade_server.html#from-chef-server-title-12>`__ to the latest version before continuing.

##### |chef server oec|
#. Upgrade your |chef server oec| node to latest version of the |chef server| by following the `upgrade instructions. <http://docs.chef.io/upgrade_server.html#from-chef-server-oec>`__

##### |chef server osc|
#. Upgrade your |chef server osc| node to latest version of the |chef server| by following the `upgrade instructions. <http://docs.chef.io/upgrade_server.html#from-chef-server-osc>`__

Move data to the |amazon ami|
-----------------------------------------------------
.. include:: ./includes_cloud_aws_chef_server_ctl_backup_and_restore.rst

.. include:: ./includes_cloud_download_starter_kit.rst

#. Extract the starter kit:

.. include:: ./includes_cloud_extract_starter_kit.rst

.. include:: ./includes_cloud_fetch_ssl.rst

.. include:: ./includes_cloud_update_client_rb.rb
