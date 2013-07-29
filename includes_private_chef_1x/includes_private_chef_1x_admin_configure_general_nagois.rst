.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This configuration file has the following settings for |nagios|:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``nagios['admin_email']``
     - Default value: ``"nobody@example.com"``. For example:
       ::

          nagios['admin_email'] = "nobody@example.com"

   * - ``nagios['admin_pager']``
     - Default value: ``"nobody@example.com"``. For example:
       ::

          nagios['admin_pager'] = "nobody@example.com"

   * - ``nagios['admin_password']``
     - Default value: ``"privatechef"``. For example:
       ::

          nagios['admin_password'] = "privatechef"

   * - ``nagios['admin_user']``
     - Default value: ``"nagiosadmin"``. For example:
       ::

          nagios['admin_user'] = "nagiosadmin"

   * - ``nagios['alert_email']``
     - This setting requires ``/usr/bin/mail``. Default value: ``"nobody@example.com"``. For example:
       ::

          nagios['alert_email'] = "nobody@example.com"

   * - ``nagios['debug_level']``
     - Default value: ``0``. For example:
       ::

          nagios['debug_level'] = 0

   * - ``nagios['debug_verbosity']``
     - Default value: ``1``. For example:
       ::

          nagios['debug_verbosity'] = 1

   * - ``nagios['default_host']``
     - Default value:
       ::

          {"check_interval"=>15,
           "retry_interval"=>15,
           "max_check_attempts"=>1,
           "notification_interval"=>300}``. 

       For example:
       ::

          nagios['default_host'] = {"check_interval"=>15,
                                    "retry_interval"=>15,
                                    "max_check_attempts"=>1,
                                    "notification_interval"=>300}
   * - ``nagios['default_service']``
     - Default value:
       ::

          {"check_interval"=>60,
           "retry_interval"=>15,
           "max_check_attempts"=>3,
           "notification_interval"=>1200}``. 

       For example:
       ::

          nagios['default_service'] = {"check_interval"=>60,
                                       "retry_interval"=>15,
                                       "max_check_attempts"=>3,
                                       "notification_interval"=>1200}

   * - ``nagios['dir']``
     - Default value: ``"/var/opt/opscode/nagios"``. For example:
       ::

          nagios['dir'] = "/var/opt/opscode/nagios"

   * - ``nagios['enable']``
     - Default value: ``true``. For example:
       ::

          nagios['enable'] = true

   * - ``nagios['fcgiwrap_log_directory']``
     - Default value: ``"/var/log/opscode/fcgiwrap"``. For example:
       ::

          nagios['fcgiwrap_log_directory'] = "/var/log/opscode/fcgiwrap"


   * - ``nagios['fcgiwrap_svlogd_size']``
     - For the svlogd-managed 'current' log set a rotation policy based on the size, in bytes, of the logfile. Default value: ``1000000``. For example:
       ::

          nagios['fcgiwrap_svlogd_size'] = 1000000


   * - ``nagios['fcgiwrap_svlogd_num']``
     - For the svlogd-managed 'current' log set a retention policy based on the number of logfiles retained. Default value: ``10``. For example:
       ::

          nagios['fcgiwrap_svlogd_num'] = 10

   * - ``nagios['fcgiwrap_port']``
     - Default value: ``9670``. For example:
       ::

          nagios['fcgiwrap_port'] = 9670

   * - ``nagios['ha']``
     - Default value: ``false``. For example:
       ::

          nagios['ha'] = false

   * - ``nagios['hosts']``
     - Default value: ``{"ubuntu"=>{"ipaddress"=>"192.168.4.131", "hostgroups"=>[]}}``. For example:
       ::

          nagios['hosts'] = {
            "ubuntu"=>{
              "ipaddress"=>"192.168.4.131", "hostgroups"=>[]
            }
          }

   * - ``nagios['interval_length']``
     - Default value: ``1``. For example:
       ::

          nagios['interval_length'] = 1

   * - ``nagios['log_directory']``
     - Default value: ``"/var/log/opscode/nagios"``. For example:
       ::

          nagios['log_directory'] = "/var/log/opscode/nagios"

   * - ``nagios['svlogd_size']``
     - For the svlogd-managed 'current' log set a rotation policy based on the size, in bytes, of the logfile. Default value: ``1000000``. For example:
       ::

          nagios['svlogd_size'] = 1000000

   * - ``nagios['svlogd_num']``
     - For the svlogd-managed 'current' log set a retention policy based on the number of logfiles retained. Default value: ``10``. For example:
       ::

          nagios['svlogd_num'] = 10

   * - ``nagios['php_fpm_log_directory']``
     - Default value: ``"/var/log/opscode/php-fpm"``. For example:
       ::

          nagios['php_fpm_log_directory'] = "/var/log/opscode/php-fpm"

   * - ``nagios['php_fpm_svlogd_size']``
     - For the svlogd-managed 'current' log set a rotation policy based on the size, in bytes, of the logfile. Default value: ``1000000``. For example:
       ::

          nagios['php_fpm_svlogd_size'] = 1000000

   * - ``nagios['php_fpm_svlogd_num']``
     - For the svlogd-managed 'current' log set a retention policy based on the number of logfiles retained. Default value: ``10``. For example:
       ::

          nagios['php_fpm_svlogd_num'] = 10

   * - ``nagios['php_fpm_port']``
     - Default value: ``9000``. For example:
       ::

          nagios['php_fpm_port'] = 9000

   * - ``nagios['port']``
     - Default value: ``9671``. For example:
       ::

          nagios['port'] = 9671

