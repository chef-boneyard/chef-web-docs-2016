.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The process of migrating from and existing |chef server| installation to the |amazon ami| differs depending on which software version you're using and where you have it deployed.  Below we'll outline the processes for migrating between common installation types.

|chef server_title|
-----------------------------------------------------
The |amazon ami| currently ships with this version of the software so it's the easiest to migrate.

#. Verify that you've got the latest version of |chef server| installed using your package manager ``rpm -qa | grep chef-server-core`` and the latest version on available on our `downloads site. <https://www.downloads.chef.io>`__  If you're not running the latest version please download and package and `upgrade <http://docs.chef.io/upgrade_server.html#from-chef-server-title-12>`__ to the latest version before continuing.

.. include:: ./includes_cloud_migrate_from_chef_server_12.rst

|chef server oec|
-----------------------------------------------------
The quickest method of restoring |chef server oec| data into the |amazon ami| is to first upgrade it in place to |chef server| and then move the data.

#. Upgrade you |chef server oec| node to latest version of the |chef server| by following the `upgrade instructions. <http://docs.chef.io/upgrade_server.html#from-chef-server-oec>`__

.. include:: ./includes_cloud_migrate_from_chef_server_12.rst

|chef server osc|
-----------------------------------------------------
The quickest method of restoring |chef server osc| data into the |amazon ami| is to first upgrade it in place to |chef server| and then move the data.

#. Upgrade you |chef server osc| node to latest version of the |chef server| by following the `upgrade instructions. <http://docs.chef.io/upgrade_server.html#from-chef-server-osc>`__

.. include:: ./includes_cloud_migrate_from_chef_server_12.rst
