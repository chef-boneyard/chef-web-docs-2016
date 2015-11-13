.. THIS PAGE DOCUMENTS Chef server version 12.3

.. THIS PAGE DOCUMENTS Chef server version 12.4

=====================================================
Install the |chef server_title|
=====================================================

.. warning:: This page is about an upcoming release of the |chef server|.

There are three configuration scenarios for the |chef server|:

* `Standalone <http://docs.chef.io/release/server_12-3/install_server.html#standalone>`__ (everything on a single machine)
* `High availability <http://docs.chef.io/release/server_12-3/install_server.html#high-availability>`__ (machines configured for front-end and back-end, allowing for failover on the back-end and load-balancing on the front-end, as required)
* `Tiered <http://docs.chef.io/release/server_12-3/install_server.html#tiered-single-backend>`__ (machines configured for front-end and back-end, with a single back-end and load-balancing on the front-end, as required)

Prerequisites
=====================================================
The |chef server| has the :doc:`following prerequisites </install_server_pre>`:

* An x86_64 compatible system architecture; |redhat enterprise linux| and |centos| may require updates prior to installation
* A resolvable hostname that is specified using a FQDN or an IP address
* A connection to |ntp| to prevent clock drift
* A local mail transfer agent that allows the |chef server| to send email notifications
* Using |cron| and the ``/etc/cron.d`` directory for periodic maintenance tasks
* Disabling the |apache qpid| daemon on |centos| and |redhat| systems
* Optional. A local user account under which services will run, a local user account for |postgresql|, and a group account under which services will run. See http://docs.chef.io/release/server_12-3/install_server_pre.html#uids-and-gids for more information.

Standalone
=====================================================
The standalone installation of |chef server| creates a working installation on a single server. This installation is also useful when you are installing |chef server| in a virtual machine, for proof-of-concept deployments, or as a part of a development or testing loop.

To install |chef server| 12:

#. Download the package from http://downloads.chef.io/chef-server/.
#. Upload the package to the machine that will run the |chef server|, and then record its location on the file system. The rest of these steps assume this location is in the ``/tmp`` directory.

#. Install the |chef server| package on the server, using the name of the package provided by |company_name|. For |redhat| and |centos| 6:

   .. code-block:: bash
      
      $ rpm -Uvh /tmp/chef-server-core-<version>.rpm

   For |ubuntu|:

   .. code-block:: bash
      
      $ dpkg -i /tmp/chef-server-core-<version>.deb

   After a few minutes, the |chef server| will be installed.

#. Run the following to start all of the services:

   .. code-block:: bash
      
      $ chef-server-ctl reconfigure

   Because the |chef server| is composed of many different services that work together to create a functioning system, this step may take a few minutes to complete.

#. .. include:: ../../step_ctl_chef_server/step_ctl_chef_server_user_create_admin.rst

#. .. include:: ../../step_ctl_chef_server/step_ctl_chef_server_org_create.rst
 
#. .. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_install_features.rst

   **Use Downloads**

   .. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_install_features_download.rst

   **Use Local Packages**

   .. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_install_features_manual.rst


High Availability
=====================================================
The following links describe how to configure the |chef server| for high availability:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="https://docs.chef.io/release/server_12-3/install_server_ha_aws.html">High Availability using Amazon Web Services</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="https://docs.chef.io/release/server_12-3/install_server_ha_drbd.html">High Availability using DRBD</a> </br>

Tiered (Single Backend)
=====================================================
The following link describes how to configure the |chef server| with a single backend machine and multiple frontend machines:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="https://docs.chef.io/release/server_12-3/install_server_tiered.html">Tiered</a> </br>