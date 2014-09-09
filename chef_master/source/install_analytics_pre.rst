=====================================================
Prerequisites
=====================================================

The following prerequisites apply to every installation of |chef analytics|. It is assumed that you have already a running |chef server oec| installation.

Download |chef analytics_title|
=====================================================
If you do not have a copy of |chef analytics|, please contact your sales representative (sales@opscode.com) or installation engineer via the customer portal to receive one.

|chef analytics| is distributed on |redhat| and |centos| using |rpm|, and on |ubuntu| as a deb.

Supported Platforms
=====================================================
.. include:: ../../includes_supported_platforms/includes_supported_platforms_server_oec.rst

Configuring the Platform
=====================================================
Before installing |chef analytics|, ensure that each system has the following installed and configured:

Update Enterprise Linux Platforms
-----------------------------------------------------
|chef analytics| requires an x86_64 compatible systems architecture. When installing on |redhat enterprise linux| or |centos| it is recommended to run ``yum update`` prior to the installation of |chef analytics| to prevent issues related to out-of-date dependencies |chef analytics| requires.

About the Hostname
=====================================================
.. include:: ../../includes_install/includes_install_analytics_hostname.rst

.. warning:: The |fqdn| for the |chef analytics| server should not exceed 64 characters when using |open ssl|. |open ssl| requires the ``CN`` in a certificate to be no longer than 64 characters. By default, |chef analytics| uses the |fqdn| of the server to determine the common name (``CN``). If the |fqdn| of the |chef analytics| server is longer than 64 characters, the ``private-chef-ctl reconfigure`` command will not fail, but an empty certificate file will be created. |nginx| will not start if a certificate file is empty.

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
|chef analytics| requires that the systems on which it is running be connected to |ntp|, as |chef analytics| is particularly sensitive to clock drift. For |redhat| and |centos| 6:

.. code-block:: bash

   $ yum install ntp
   $ chkconfig ntpd on
   $ service ntpd start

For |ubuntu|:

.. code-block:: bash

   $ apt-get install ntp


Mail Relay
-----------------------------------------------------
The |chef analytics| server uses email to send notifications. Follow the appropriate guidelines for the platform on which |chef analytics| is running to configure a local mail transfer agent. Ideally, the |chef analytics| server is able to send email to any member of your domain.


|cron|
-----------------------------------------------------
Periodic maintenance tasks are performed on |chef analytics| servers via |cron| and the ``/etc/cron.d`` directory. On |centos| 6 minimal installations, |cron| may not be installed and configured.

To install |crontab| on |centos| 6, run the following command:

.. code-block:: bash

   $ yum install crontabs

|apache qpid|
-----------------------------------------------------
On |centos| and |redhat| systems, the |apache qpid| daemon is installed by default. In order to run |chef analytics| this daemon must be disabled, as |chef analytics| uses |rabbitmq| for messaging (and they share the same protocol).

To determine if it is installed:

.. code-block:: bash

   $ rpm -qa | grep qpid
   qpid-cpp-server-0.12-6.el6.x86_64

If you see a response like the above, you have the |apache qpid| server installed. To disable it:

.. code-block:: bash

   $ service qpidd stop
   $ chkconfig --del qpidd



Required Accounts
=====================================================
By default, accounts required by the |chef server| are created during setup. If your environment has restrictions on the creation of local user and group accounts that will prevent these accounts from being created automatically during setup, you will need to create these accounts. The following user accounts are required:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - User Account
     - Description
   * - ``opscode``
     - The user name under which services will run.
   * - ``chef-pgsql``
     - The user name for |postgresql|.

The following group accounts are required:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Group Account
     - Description
   * - ``opscode``
     - The group name under which services will run.

.. note:: When |chef analytics| is installed in |combined| mode it uses the same accounts as |chef server oec|, namely ``opscode`` and ``opscode-pgsql``.
