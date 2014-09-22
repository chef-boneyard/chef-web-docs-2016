=====================================================
Prerequisites
=====================================================

The following prerequisites apply to every installation of the |chef analytics| server. A |chef server| must be installed and configured before the |chef analytics| server.

Download |chef analytics_title|
=====================================================
The |chef analytics| server is available for download at http://downloads.getchef.com/analytics/.

Supported Platforms
=====================================================
.. include:: ../../includes_supported_platforms/includes_supported_platforms_server_oec.rst

Configuring the Platform
=====================================================
Before installing |chef analytics|, ensure that each system has the following installed and configured:

Enterprise Linux Platform Updates
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_common_enterprise_linux_platform_updates.rst

About the Hostname
=====================================================
.. include:: ../../includes_install/includes_install_common_hostname.rst

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
.. include:: ../../includes_install/includes_install_common_ntp.rst

|chef client_title|
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_install/includes_install_common_ntp_chef_client.rst

Mail Relay
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_common_mail_relay.rst

|cron|
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_common_cron.rst

|apache qpid|
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_common_apache_qpid.rst

Required Accounts
=====================================================
.. include:: ../../includes_install/includes_install_common_required_accounts.rst

Group Accounts
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_common_required_accounts_group.rst

User Accounts
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_common_required_accounts_user.rst