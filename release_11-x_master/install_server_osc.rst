.. THIS PAGE IS IDENTICAL TO docs.getchef.com/install_server_oec.html BY DESIGN
.. THIS PAGE IS LOCATED AT THE /server/ PATH.

=====================================================
Install the |chef server_title|
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




