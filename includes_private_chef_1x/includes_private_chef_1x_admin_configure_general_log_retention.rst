.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This configuration file has the following settings for log retention:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``log_retention['couchdb']``
     - For configuration file retention times on the /var/log/opscode/couchdb directory. And files with mtimes older than this number of days will be deleted. Default value: ``14``. For example:
       ::

          log_retention['couchdb'] = 14

   * - ``log_retention['postgresql']``
     - For configuration file retention times on the /var/log/opscode/postgresql directory. And files with mtimes older than this number of days will be deleted. Default value: ``14``. For example:
       ::

          log_retention['postgresql'] = 14

   * - ``log_retention['rabbitmq']``
     - For configuration file retention times on the /var/log/opscode/rabbitmq directory. And files with mtimes older than this number of days will be deleted. Default value: ``14``. For example:
       ::

          log_retention['rabbitmq'] = 14

   * - ``log_retention['redis']``
     - For configuration file retention times on the /var/log/opscode/redis directory. And files with mtimes older than this number of days will be deleted. Default value: ``14``. For example:
       ::

          log_retention['redis'] = 14

   * - ``log_retention['opscode-authz']``
     - For configuration file retention times on the /var/log/opscode/opscode-authz directory. And files with mtimes older than this number of days will be deleted. Default value: ``14``. For example:
       ::

          log_retention['opscode-authz'] = 14

   * - ``log_retention['opscode-certificate']``
     - For configuration file retention times on the /var/log/opscode/opscode-certificate directory. And files with mtimes older than this number of days will be deleted. Default value: ``14``. For example:
       ::

          log_retention['opscode-certificate'] = 14

   * - ``log_retention['opscode-account']``
     - For configuration file retention times on the /var/log/opscode/opscode-account directory. And files with mtimes older than this number of days will be deleted. Default value: ``14``. For example:
       ::

          log_retention['opscode-account'] = 14

   * - ``log_retention['opscode-solr']``
     - For configuration file retention times on the /var/log/opscode/opscode-solr directory. And files with mtimes older than this number of days will be deleted. Default value: ``14``. For example:
       ::

          log_retention['opscode-solr'] = 14

   * - ``log_retention['opscode-expander']``
     - For configuration file retention times on the /var/log/opscode/opscode-expander directory. And files with mtimes older than this number of days will be deleted. Default value: ``14``. For example:
       ::

          log_retention['opscode-expander'] = 14

   * - ``log_retention['opscode-org-creator']``
     - For configuration file retention times on the /var/log/opscode/opscode-org-creator directory. And files with mtimes older than this number of days will be deleted. Default value: ``14``. For example:
       ::

          log_retention['opscode-org-creator'] = 14

   * - ``log_retention['opscode-chef']``
     - For configuration file retention times on the /var/log/opscode/opscode-chef directory. And files with mtimes older than this number of days will be deleted. Default value: ``14``. For example:
       ::

          log_retention['opscode-chef'] = 14

   * - ``log_retention['opscode-erchef']``
     - For configuration file retention times on the /var/log/opscode/opscode-erchef directory. And files with mtimes older than this number of days will be deleted. Default value: ``14``. For example:
       ::

          log_retention['opscode-erchef'] = 14

   * - ``log_retention['opscode-webui']``
     - For configuration file retention times on the /var/log/opscode/opscode-webui directory. And files with mtimes older than this number of days will be deleted. Default value: ``14``. For example:
       ::

          log_retention['opscode-webui'] = 14

   * - ``log_retention['nagios']``
     - For configuration file retention times on the /var/log/opscode/nagios directory. And files with mtimes older than this number of days will be deleted. Default value: ``14``. For example:
       ::

          log_retention['nagios'] = 14

   * - ``log_retention['nginx']``
     - For configuration file retention times on the /var/log/opscode/nginx directory. And files with mtimes older than this number of days will be deleted. Default value: ``14``. For example:
       ::

          log_retention['nginx'] = 14

