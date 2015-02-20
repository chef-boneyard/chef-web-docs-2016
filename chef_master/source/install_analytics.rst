=====================================================
Install |chef analytics_title|
=====================================================

.. include:: ../../includes_analytics/includes_analytics.rst

Prerequisites
=====================================================
The |chef analytics| server shares the :doc:`same prerequisites </install_server_pre>` as the |chef server|:

* |chef server| 11.1.8 (or higher) is required for |chef analytics| 1.0 versions
* |chef server| version 12 is required |chef analytics| 1.1 versions
* |chef client| version 12.0.0.alpha is required for |chef client_audit| and using ``control_group`` and ``control`` |dsl recipe| methods
* |reporting| is installed on the |chef server|. |reporting| version 1.2.3 is required to view the results of |chef client_audit|, i.e. ``run_start``, ``run_resource``, and ``run_converge`` messages; earlier versions of |reporting| may be used, but will not show these results
* An x86_64 compatible system architecture; |redhat enterprise linux| and |centos| may require updates prior to installation
* A resolvable hostname that is specified using a FQDN or an IP address
* A connection to |ntp| to prevent clock drift
* A local mail transfer agent that allows the |chef server| to send email notifications
* Using |cron| and the ``/etc/cron.d`` directory for periodic maintenance tasks
* Disabling the |apache qpid| daemon on |centos| and |redhat| systems
* A local user account under which services will run
* A local user account for |postgresql|
* A group account under which services will run

Hostnames
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_analytics_hostname.rst

.. warning:: The |fqdn| for the |chef analytics| server should not exceed 64 characters when using |open ssl|. |open ssl| requires the ``CN`` in a certificate to be no longer than 64 characters. By default, |chef analytics| uses the |fqdn| of the server to determine the common name (``CN``). If the |fqdn| of the |chef analytics| server is longer than 64 characters, the ``chef-server-ctl reconfigure`` command will not fail, but an empty certificate file will be created. |nginx| will not start if a certificate file is empty.

Install the Server
=====================================================
|chef analytics| is installed on dedicated hardware with its own configuration topology that is independent from the machines in the |chef server| configuration and compatible with the existing |chef server| machine topology (standalone, tiered, or high availability). |chef analytics| version 1.1 machines may be installed as a standalone or tiered configuration. Earlier versions of |chef analytics| may only be installed as a standalone configuration.

Standalone (version 1.1)
-----------------------------------------------------
.. note:: |chef analytics| version 1.1 requires |chef server| version 12.

.. include:: ../../includes_install/includes_install_analytics_standalone_11.rst

Tiered (version 1.1 only)
-----------------------------------------------------
.. note:: |chef analytics| version 1.1 requires |chef server| version 12.

.. include:: ../../includes_install/includes_install_analytics_tiered.rst

Standalone (version 1.0)
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_analytics_standalone_10.rst