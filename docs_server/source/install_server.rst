.. THIS PAGE IS IDENTICAL TO docs.getchef.com/install_server_oec.html BY DESIGN
.. THIS PAGE IS LOCATED AT THE /server/ PATH.

=====================================================
Install the |chef server|
=====================================================

High Availability
=====================================================
placeholder

Standalone
=====================================================
The standalone installation of |chef server oec| creates a working installation on a single server. This installation is also useful when you are installing |chef server oec| in a virtual machine, for proof-of-concept deployments, or as a part of a development or testing loop.

To upgrade to |chef server| 12 from the |chef server osc| server, do the following:

#. Review the system requirements:

   .. include:: ../../includes_system_requirements/includes_system_requirements_server.rst

#. Upload the package provided to the server on which the |chef server| will be installed, and then record its location on the file system. The rest of this section assumes this location is in ``/tmp`` directory.

#. Install the |chef server oec| package on the server, using the name of the package provided by |company_name|. For |redhat| and |centos| 6:

   .. code-block:: bash
      
      $ rpm -Uvh /tmp/private-chef-full-1.0.0–1.x86_64.rpm

   For |ubuntu|:

   .. code-block:: bash
      
      $ dpkg -i /tmp/private-chef-full_1.0.0–1_amd64.deb

   The |chef server| is now installed on the server.

#. Run the following to start all of the services:

   .. code-block:: bash
      
      $ private-chef-ctl reconfigure

   Because the |chef server| is composed of many different services that work together to create a functioning system, this step may take a few minutes to complete.


