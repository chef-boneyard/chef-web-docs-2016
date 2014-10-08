=====================================================
Prerequisites
=====================================================

The following prerequisites apply to every installation of the |chef server|.

Minimum Requirements
=====================================================
All machines in a |chef server| deployment have the following requirements:

.. include:: ../../includes_system_requirements/includes_system_requirements_server.rst

Front end machines, when load balanced, may have fewer than 4 cores and 4 GB of RAM.

|apache qpid|
=====================================================
.. include:: ../../includes_install/includes_install_common_apache_qpid.rst

|cron|
=====================================================
.. include:: ../../includes_install/includes_install_common_cron.rst

Enterprise Linux Updates
=====================================================
.. include:: ../../includes_install/includes_install_common_enterprise_linux_platform_updates.rst

Hostnames
=====================================================
.. include:: ../../includes_install/includes_install_common_hostname.rst

|chef analytics_title|
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_analytics_hostname.rst

.. warning:: The |fqdn| for the |chef analytics| server should not exceed 64 characters when using |open ssl|. |open ssl| requires the ``CN`` in a certificate to be no longer than 64 characters. By default, |chef analytics| uses the |fqdn| of the server to determine the common name (``CN``). If the |fqdn| of the |chef analytics| server is longer than 64 characters, the ``chef-server-ctl reconfigure`` command will not fail, but an empty certificate file will be created. |nginx| will not start if a certificate file is empty.

Configure Hostnames
-----------------------------------------------------
Use the following sections to verify the hostnames that is used by the |chef server|.

**To verify if a hostname is a FQDN**

.. include:: ../../includes_install/includes_install_common_hostname_is_fqdn.rst

**To verify is a hostname is resolvable**

.. include:: ../../includes_install/includes_install_common_hostname_is_resolvable.rst

**To change a hostname**

.. include:: ../../includes_install/includes_install_common_hostname_edit.rst

**To add a hostname to /etc/hosts**

.. include:: ../../includes_install/includes_install_common_hostname_add_to_etc_hosts.rst

Mail Relay
=====================================================
.. include:: ../../includes_install/includes_install_common_mail_relay.rst

NTP
=====================================================
.. include:: ../../includes_install/includes_install_common_ntp.rst

|chef client_title|
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_common_ntp_chef_client.rst

Required Accounts
=====================================================
.. include:: ../../includes_install/includes_install_common_required_accounts.rst

Group Accounts
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_common_required_accounts_group.rst

User Accounts
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_common_required_accounts_user.rst
