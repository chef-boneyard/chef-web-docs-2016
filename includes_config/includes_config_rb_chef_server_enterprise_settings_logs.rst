.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This configuration file has the following settings for log files:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``log_retention['bifrost']``
     - For configuration file retention times on the /var/log/opscode/bifrost directory. And files with mtimes older than this number of days will be deleted. Default value: ``14``.
   * - ``log_retention['bookshelf']``
     - For configuration file retention times on the /var/log/opscode/bookshelf directory. And files with mtimes older than this number of days will be deleted. Default value: ``14``.
   * - ``log_retention['couchdb']``
     - For configuration file retention times on the /var/log/opscode/couchdb directory. And files with mtimes older than this number of days will be deleted. Default value: ``14``.
   * - ``log_retention['nginx']``
     - For configuration file retention times on the /var/log/opscode/nginx directory. And files with mtimes older than this number of days will be deleted. Default value: ``14``.
   * - ``log_retention['postgresql']``
     - For configuration file retention times on the /var/log/opscode/postgresql directory. And files with mtimes older than this number of days will be deleted. Default value: ``14``.
   * - ``log_retention['rabbitmq']``
     - For configuration file retention times on the /var/log/opscode/rabbitmq directory. And files with mtimes older than this number of days will be deleted. Default value: ``14``.
   * - ``log_retention['redis']``
     - For configuration file retention times on the /var/log/opscode/redis directory. And files with mtimes older than this number of days will be deleted. Default value: ``14``.
   * - ``log_retention['opscode-account']``
     - For configuration file retention times on the /var/log/opscode/opscode-account directory. And files with mtimes older than this number of days will be deleted. Default value: ``14``.
   * - ``log_retention['opscode-certificate']``
     - For configuration file retention times on the /var/log/opscode/opscode-certificate directory. And files with mtimes older than this number of days will be deleted. Default value: ``14``.
   * - ``log_retention['opscode-chef']``
     - For configuration file retention times on the /var/log/opscode/opscode-chef directory. And files with mtimes older than this number of days will be deleted. Default value: ``14``.
   * - ``log_retention['opscode-erchef']``
     - For configuration file retention times on the /var/log/opscode/opscode-erchef directory. And files with mtimes older than this number of days will be deleted. Default value: ``14``.
   * - ``log_retention['opscode-expander']``
     - For configuration file retention times on the /var/log/opscode/opscode-expander directory. And files with mtimes older than this number of days will be deleted. Default value: ``14``.
   * - ``log_retention['opscode-org-creator']``
     - For configuration file retention times on the /var/log/opscode/opscode-org-creator directory. And files with mtimes older than this number of days will be deleted. Default value: ``14``.
   * - ``log_retention['opscode-orgmapper']``
     - For configuration file retention times on the /var/log/opscode/opscode-orgmapper directory. And files with mtimes older than this number of days will be deleted. Default value: ``14``.
   * - ``log_retention['opscode-solr']``
     - For configuration file retention times on the /var/log/opscode/opscode-solr directory. And files with mtimes older than this number of days will be deleted. Default value: ``14``.
   * - ``log_retention['opscode-webui']``
     - For configuration file retention times on the /var/log/opscode/opscode-webui directory. And files with mtimes older than this number of days will be deleted. Default value: ``14``.

And for log rotation:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``log_rotation``
     - For configuring log rotation on files that are not managed by svlogd or rotated by the application itself. Default value:
       ::

          log_rotation["/var/log/opscode/nginx/*.log"] = { "rotate" => 14 }
          log_rotation["/var/log/opscode/php-fpm/php-fpm.log"] = { "rotate" => 14 }
          log_rotation["/var/log/opscode/couchdb/couchdb.log"] = { "rotate" => 14, "owner"=>"opscode", "group"=>"opscode" }
          log_rotation["/var/log/opscode/nagios/nagios.log"] = { "rotate" => 14 }



