=====================================================
Prerequisites
=====================================================

The following prerequisites apply to every installation of the |chef server|.

Download the |chef server_title|
=====================================================
If you do not have a copy of the |chef server|, please contact your sales representative (sales@opscode.com) or installation engineer via the customer portal to receive one.

The |chef server| is distributed on |redhat| and |centos| using |rpm|, and on |ubuntu| as a deb.

Supported Platforms
=====================================================
.. include:: ../../includes_supported_platforms/includes_supported_platforms_11_server_oec.rst

Configuring the Platform
=====================================================
Before installing the |chef server|, ensure that each system has the following installed and configured:

Update Enterprise Linux Platforms
-----------------------------------------------------
The |chef server| requires an x86_64 compatible systems architecture. When installing on |redhat enterprise linux| or |centos| it is recommended to run ``yum update`` prior to the installation of the |chef server| to prevent issues related to out-of-date dependencies the |chef server| requires.

About the Hostname
=====================================================
.. include:: ../../includes_install/includes_install_server_hostname.rst

.. warning:: The |fqdn| for the |chef server| server should not exceed 64 characters when using |open ssl|. |open ssl| requires the ``CN`` in a certificate to be no longer than 64 characters. By default, the |chef server| uses the |fqdn| of the server to determine the common name (``CN``). If the |fqdn| of the |chef server| server is longer than 64 characters, the ``chef-server-ctl reconfigure`` command will not fail, but an empty certificate file will be created. |nginx| will not start if a certificate file is empty.

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
The |chef server| requires that the systems on which it is running be connected to |ntp|, as the |chef server| is particularly sensitive to clock drift. For |redhat| and |centos| 6:

.. code-block:: bash

   $ yum install ntp
   $ chkconfig ntpd on
   $ service ntpd start

For |ubuntu|:

.. code-block:: bash

   $ apt-get install ntp

In addition, the |chef server| server requires that any node on which the |chef client| runs also have an accurate clock that is synchronized very closely with the clock on the server. If the clocks are not synchronized closely, the authentication process may fail. This may occur when the clocks are out-of-sync by more than 15 minutes and will trigger a ``401 Unauthorized`` response when trying to access the |chef server| using the |api chef server|. The ``401 Unauthorized`` response will be similar to: 

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
The |chef server| server uses email to send notifications for various events, such as password resets, user invites, cluster fail-over, or failed periodic jobs. (The |webui|---an add-on for the |chef server|---requires email to send password reset and user invites.) Follow the appropriate guidelines for the platform on which the |chef server| is running to configure a local mail transfer agent. Ideally, the |chef server| server is able to send email to any member of your domain.


|cron|
-----------------------------------------------------
Periodic maintenance tasks are performed on the |chef server| servers via |cron| and the ``/etc/cron.d`` directory. On |centos| 6 minimal installations, |cron| may not be installed and configured.

To install |crontab| on |centos| 6, run the following command:

.. code-block:: bash

   $ yum install crontabs

|apache qpid|
-----------------------------------------------------
On |centos| and |redhat| systems, the |apache qpid| daemon is installed by default. In order to run the |chef server| this daemon must be disabled, as the |chef server| uses |rabbitmq| for messaging (and they share the same protocol).

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
   * - ``opscode-pgsql``
     - The user name for |postgresql|. (This is only required on the back end servers in a high availability setup.)

The following group accounts are required:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Group Account
     - Description
   * - ``opscode``
     - The group name under which services will run.

.. note:: Add-ons for the |chef server|---|push jobs| and |reporting|, for example---use the same accounts listed above.
