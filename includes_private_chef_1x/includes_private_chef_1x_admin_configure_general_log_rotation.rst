.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This configuration file has the following settings for log rotation:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``log_rotation``
     - For configuring log rotation on files that are not managed by svlogd or rotated by the application itself. Default value:
       ::

          {
            "/var/log/opscode/nginx/*.log" => {
              "rotate" => 14
            },
            "/var/log/opscode/php-fpm/php-fpm.log" => {
              "rotate" => 14
            },
            "/var/log/opscode/couchdb/couchdb.log" => {
              "rotate" => 14
            },
            "/var/log/opscode/nagios/nagios.log" => {
              "rotate" => 14
            },
          }

       For example:
       ::

          log_rotation = {
            "/var/log/opscode/nginx/*.log" => {
              "rotate" => 14
            },
            "/var/log/opscode/php-fpm/php-fpm.log" => {
              "rotate" => 14
            },
            "/var/log/opscode/couchdb/couchdb.log" => {
              "rotate" => 14
            },
            "/var/log/opscode/nagios/nagios.log" => {
             "rotate" => 14
            },
          }


