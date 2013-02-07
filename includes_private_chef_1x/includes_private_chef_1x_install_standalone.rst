.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Standalone Installation
The standalone installation of |chef private| creates a working installation on a single server. This installation is typically useful when you are installing |chef private| in a virtual machine, for proof-of-concept deployments, or as a part of a development or testing loop.

System Requirements
+++++++++++++++++++++++++++++++++++++++++++++++++++++

* 4 total cores, 2.0 GHz AMD 41xx/61xx or Intel Xeon 5000/E5 CPUs or faster
* 4 GB of RAM
* 5 GB of free disk space in ``/opt``
* 5 GB of free disk space in ``/var``


Firewall Requirements
+++++++++++++++++++++++++++++++++++++++++++++++++++++
If you are using host-based firewalls (iptables, ufw, etc.) you will want to ensure that the following ports are open:

Port	Used By
80	nginx
443	nginx

Refer to your operating systems manual, or your site systems administrators for instructions on how to enable this change.

Add Package for |chef private| to a Server
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Upload the package provided to the server you wish to install on, and record its location on the file-system. The rest of this section will assume you uploaded it to the /tmp directory.

Install the |chef private| package
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Install the |chef private| package on the server, using the name of the package provided by |opscode|.

Install the |chef private| package on |redhat| and |centos| 6:

$ rpm -Uvh /tmp/private-chef-full-1.0.0–1.x86_64.rpm

Install the |chef private| package on |ubuntu|:

$ dpkg -i /tmp/private-chef-full_1.0.0–1_amd64.deb

Configure |chef private|
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|chef private| is now installed on your server, but is not configured for use. To configure it for a standalone installation, simply run:

Configure |chef private| Standalone

.. code-block:: bash

   $ private-chef-ctl reconfigure

This command may take several minutes to run, during which you will see the output of the Chef run that is configuring your new Private Chef installation. When it is complete, you will see:

Completed ``private-chef-ctl reconfigure``

.. code-block:: bash

   Chef Server Reconfigured!

.. note:: |chef private| is composed of many different services, which work together to create a functioning system. One outcome is that it can take a few minutes for the system to finish starting up. One way to tell that the system is fully ready is to use the top command. You will notice high CPU utilization for several ruby processes while the system is starting up. When that utilization drops off, the system is ready.

+++++++++++++++++++++++++++++++++++++++++++++++++++++
Success!
Congratulations, you have installed a stand-alone |chef private| server. You should now continue with the User Management section of this guide.


