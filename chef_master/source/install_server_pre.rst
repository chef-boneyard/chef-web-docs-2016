=====================================================
Prerequisites
=====================================================

The following prerequisites apply to every installation of |chef server oec|.

Download |chef server oec| 1.x.x
=====================================================
If you do not have a copy of |chef server oec|, please contact your sales representative (sales@opscode.com) or installation engineer via the customer portal to receive one.

|chef server oec| is distributed on |redhat| and |centos| using |rpm|, and on |ubuntu| as a deb.

Supported Platforms
=====================================================
|chef server oec| is supported on the following operating systems:

* |redhat enterprise linux| 6.2 or newer
* |centos| 6.2 or newer
* |ubuntu| 10.04

|chef server oec| requires an x86_64 compatible systems architecture. When installing on |redhat enterprise linux| or |centos| please note that we recommend you run 'yum update' prior to the installation of |chef server oec| as you may encounter issues due to out of date dependencies |chef server oec| requires.

Configuring the Platform
=====================================================
Before installing |chef server oec|, ensure that each system has the following installed and configured:

Hostnames, FQDNs
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_server_hostname.rst

.. warning:: The |fqdn| for the |chef server oec| server should not exceed 64 characters when using |open ssl|. |open ssl| requires the ``CN`` in a certificate to be no longer than 64 characters. By default, |chef server oec| uses the |fqdn| of the server to determine the common name (``CN``). If the |fqdn| of the |chef server oec| server is longer than 64 characters, the ``private-chef-ctl reconfigure`` command will not fail, but an empty certificate file will be created. |nginx| will not start if a certificate file is empty.

**To verify if a hostname is a FQDN**

.. include:: ../../step_install/step_install_hostname_is_fqdn.rst

**To verify is a hostname is resolvable**

.. include:: ../../step_install/step_install_hostname_is_resolvable.rst

**To change a hostname**

.. include:: ../../step_install/step_install_hostname_edit.rst

**To add a hostname to /etc/hosts**

.. include:: ../../step_install/step_install_hostname_add_to_etc_hosts.rst

NTP
-----------------------------------------------------
|chef server oec| requires that the systems on which it is running be connected to |ntp|, as |chef server oec| is particularly sensitive to clock drift. For |redhat| and |centos| 6:

.. code-block:: bash

   $ yum install ntp
   $ chkconfig ntpd on
   $ service ntpd start

For |ubuntu|:

.. code-block:: bash

   $ apt-get install ntp

In addition, the |chef server oec| server requires that any node on which the |chef client| runs also have an accurate clock that is synchronized very closely with the clock on the server. If the clocks are not synchronized closely, the authentication process may fail. This may occur when the clocks are out-of-sync by more than 15 minutes and will trigger a ``401 Unauthorized`` response when trying to access the |chef server oec| using the |api chef server|. The ``401 Unauthorized`` response will be similar to: 

.. code-block:: bash

   [Tue, 01 Nov 2011 16:55:23 -0700] INFO: *** Chef 11.X.X ***
   [Tue, 01 Nov 2011 16:55:23 -0700] INFO: Client key /etc/chef/client.pem is not present - registering
   [Tue, 01 Nov 2011 16:55:24 -0700] INFO: HTTP Request Returned 401 Unauthorized: 
       Failed to authenticate as ORGANIZATION-validator. Synchronize the clock on your host.
   [Tue, 01 Nov 2011 16:55:24 -0700] FATAL: Stacktrace dumped to /var/chef/cache/chef-stacktrace.out
   [Tue, 01 Nov 2011 16:55:24 -0700] FATAL: Net::HTTPServerException: 401 "Unauthorized"

In this situation, re-sync the system clocks with the |ntp| server and then re-run the |chef client|.

Mail Relay
-----------------------------------------------------
The |chef server oec| system utilizes email to send notifications for various events (such as cluster fail-over, or failed periodic jobs.) We recommend you follow your operating system's guidelines and individual corporate policy for installation and configuration of a local mail transfer agent.

|cron|
-----------------------------------------------------
Periodic maintenance tasks are performed on |chef server oec| servers via |cron| and the ``/etc/cron.d`` directory. On |centos| 6 minimal installations, |cron| may not be installed and configured.

To install |crontab| on |centos| 6, run the following command:

.. code-block:: bash

   $ yum install crontabs


|git|
-----------------------------------------------------
|chef server oec| requires that |git| be installed so that various internal services can confirm their own revision. For |redhat| and |centos| 6:

.. code-block:: bash

   $ yum install git

For |ubuntu|:

.. code-block:: bash

   $ apt-get install git-core



|redhat| and |centos|
-----------------------------------------------------
|chef server oec| requires ``libfreetype`` and ``libpng``, which may not be present in a minimal installation. To install ``freetype`` and ``libpng`` on |redhat| and |centos| 6:

.. code-block:: bash

   $ yum install freetype libpng


|apache qpid|
-----------------------------------------------------
On |centos| and |redhat| systems, the |apache qpid| daemon is installed by default. In order to run |chef server oec|, this daemon must be disabled, as |chef server oec| uses |rabbitmq| for messaging (and they share the same protocol).

To determine if it is installed:

.. code-block:: bash

   $ rpm -qa | grep qpid
   qpid-cpp-server-0.12-6.el6.x86_64

If you see a response like the above, you have the |apache qpid| server installed. To disable it:

.. code-block:: bash

   $ service qpidd stop
   $ chkconfig --del qpidd



Required Users
=====================================================
If the environment has restrictions on the creation of local user and group accounts (via the ``adduser`` command), you will need to ensure that the correct users exist.

