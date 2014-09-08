.. THIS PAGE IS IDENTICAL TO docs.getchef.com/install_server_oec.html BY DESIGN
.. THIS PAGE IS LOCATED AT THE /server/ PATH.

=====================================================
Install the |chef server|
=====================================================
There are two configuration scenarios for the |chef server|: standalone (everything on a single machine) and high availability (machines configured for front-end and back-end, allowing for failover and load-balancing, as required).

Standalone
=====================================================
The standalone installation of |chef server| creates a working installation on a single server. This installation is also useful when you are installing |chef server| in a virtual machine, for proof-of-concept deployments, or as a part of a development or testing loop.

To upgrade to |chef server| 12 from the |chef server osc| server, do the following:

#. Review the system requirements:

   .. include:: ../../includes_system_requirements/includes_system_requirements_server.rst

#. Upload the package provided to the server on which the |chef server| will be installed, and then record its location on the file system. The rest of this section assumes this location is in ``/tmp`` directory.

#. Install the |chef server| package on the server, using the name of the package provided by |company_name|. For |redhat| and |centos| 6:

   .. code-block:: bash
      
      $ rpm -Uvh /tmp/chef-server-core-<version>.rpm

   For |ubuntu|:

   .. code-block:: bash
      
      $ dpkg -i /tmp/chef-server-core-<version>.deb

   The |chef server| is now installed on the server.

#. Run the following to start all of the services:

   .. code-block:: bash
      
      $ chef-server-ctl reconfigure

   Because the |chef server| is composed of many different services that work together to create a functioning system, this step may take a few minutes to complete.

#. Enable the premium features of the |chef server|! For each of the premium features you want to install, run the following command:

   .. code-block:: bash
      
      $ chef-server-ctl install name_of_premium_feature

   where ``name_of_premium_feature`` is one of the following values: ``opscode-analytics`` (for |chef analytics|), ``opscode-manage`` (for |chef manage|), ``chef-ha`` (for |chef ha|), ``opscode-push-jobs-server`` (for |push jobs|), ``chef-sync`` (for |chef server| replication), or ``opscode-reporting`` (for |reporting|).

High Availability
=====================================================
The following links describe how to configure the |chef server| for high availability.

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.getchef.com/install_server_pre.html">Prerequisites</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.getchef.com/install_server_fe.html">Front-end Machines</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.getchef.com/install_server_be.html">Back-end Machines</a> </br>


