=====================================================
Standalone
=====================================================

The standalone installation of |chef server oec| creates a working installation on a single server. This installation is typically useful when you are installing |chef server oec| in a virtual machine, for proof-of-concept deployments, or as a part of a development or testing loop.

System Requirements
=====================================================
A standalone installation scenario has the following system requirements:

* 4 total cores, 2.0 GHz AMD 41xx/61xx or Intel Xeon 5000/E5 CPUs or faster
* 4 GB of RAM
* 5 GB of free disk space in ``/opt``
* 5 GB of free disk space in ``/var``

Firewall Requirements
=====================================================
If you are using host-based firewalls (iptables, ufw, etc.) ensure that the following ports are open:

* Port 80, nginx 
* Port 443, nginx

Refer to the operating system's manual, or a site systems administrator for instructions on how to enable this change.

Add Package to Server
=====================================================
Upload the package provided to the server on which |chef server oec| will be installed, and then record its location on the file system. The rest of this section assumes this location is in ``/tmp`` directory.

Install the Package
=====================================================
Install the |chef server oec| package on the server, using the name of the package provided by |company_name|. For |redhat| and |centos| 6:

.. code-block:: bash

   $ rpm -Uvh /tmp/private-chef-full-1.0.0–1.x86_64.rpm

For |ubuntu|:

.. code-block:: bash

   $ dpkg -i /tmp/private-chef-full_1.0.0–1_amd64.deb

Configure
=====================================================
|chef server oec| is now installed on your server, but is not configured for use. To configure it for a standalone installation, simply run:

.. code-block:: bash

   $ private-chef-ctl reconfigure

This command may take several minutes to run, during which the output of the |chef| run that is configuring your new |chef server oec| installation is shown. When it is complete, you will see:

.. code-block:: bash

   Chef Server Reconfigured!

.. note:: |chef server oec| is composed of many different services, which work together to create a functioning system. One outcome is that it can take a few minutes for the system to finish starting up. One way to tell that the system is fully ready is to use the top command. You will notice high CPU utilization for several |ruby| processes while the system is starting up. When that utilization drops off, the system is ready.

Success!
=====================================================
Congratulations, a standalone |chef server oec| server is installed.
