.. This page is the Chef 12 server install page.

=====================================================
Install the |chef server_title|
=====================================================
There are two configuration scenarios for the |chef server|: standalone (everything on a single machine) and high availability (machines configured for front-end and back-end, allowing for failover and load-balancing, as required).

Prerequisites
=====================================================
The |chef server| has the :doc:`following prerequisites </install_server_pre>`:

* An x86_64 compatible system architecture; |redhat enterprise linux| and |centos| may require updates prior to installation
* A resolvable hostname that is specified using a FQDN or an IP address
* A connection to |ntp| to prevent clock drift
* A local mail transfer agent that allows the |chef server| to send email notifications
* Using |cron| and the ``/etc/cron.d`` directory for periodic maintenance tasks
* Disabling the |apache qpid| daemon on |centos| and |redhat| systems
* A local user account under which services will run
* A local user account for |postgresql|
* A group account under which services will run

Standalone
=====================================================
The standalone installation of |chef server| creates a working installation on a single server. This installation is also useful when you are installing |chef server| in a virtual machine, for proof-of-concept deployments, or as a part of a development or testing loop.

To install |chef server| 12:

#. Download the package from http://downloads.getchef.com/chef-server/.
#. Review the system requirements:

   .. include:: ../../includes_system_requirements/includes_system_requirements_server.rst

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

#. Enable additional features of the |chef server|! Run the following commands:

   .. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_install_table.rst

High Availability
=====================================================
The following links describe how to configure the |chef server| for high availability:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.getchef.com/install_server_ha_aws.html">High Availability using Amazon Web Services</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.getchef.com/install_server_ha_drbd.html">High Availability using DRBD</a> </br>


