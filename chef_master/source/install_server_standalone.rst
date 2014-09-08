=====================================================
Standalone
=====================================================

The standalone installation of the |chef server| creates a working installation on a single server. This installation is also useful when you are installing the |chef server| in a virtual machine, for proof-of-concept deployments, or as a part of a development or testing loop.

System Requirements
=====================================================
A standalone installation scenario has the following system requirements:

* 4 total cores, 2.0 GHz AMD 41xx/61xx or Intel Xeon 5000/E5 CPUs or faster
* 4 GB of RAM
* 5 GB of free disk space in ``/opt``
* 5 GB of free disk space in ``/var``

**Firewall Requirements**

.. include:: ../../includes_server_firewalls_and_ports/includes_server_firewalls_and_ports.rst

.. include:: ../../includes_server_firewalls_and_ports/includes_server_firewalls_and_ports_standalone.rst

**Hostnames, FQDNs**

The hostname for the |chef server| must be a |fqdn|, including the domain suffix, and must be resolvable. See `Hostnames, FQDNs <http://docs.getchef.com/install_server_pre.html#hostnames-fqdns>`_ for more information.

Install the |chef server|
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

   where ``name_of_premium_feature`` is one of the following values: ``opscode-analytics`` (for |chef analytics|), ``opscode-manage`` (for |chef manage|), ``chef-ha`` (for |chef ha|), ``chef-sync`` (for |chef server| replication), or ``opscode-reporting`` (for |reporting|).