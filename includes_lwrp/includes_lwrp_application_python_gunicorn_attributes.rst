.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``app_module``
     - |app_module lwrp application_python_gunicorn|
   * - ``backlog``
     - |backlog_connections|
   * - ``daemon``
     - |daemonize gunicorn|
   * - ``debug``
     - |debug_enabled| Default value: ``false``.
   * - ``host``
     - 
   * - ``keepalive``
     - |keepalive request_time|
   * - ``logfile``
     - |log_location|
   * - ``loglevel``
     - |log_level|
   * - ``max_requests``
     - |worker_max_requests|
   * - ``pidfile``
     - |name pid_file|
   * - ``port``
     - 
   * - ``preload_app``
     - |preload_app| Default value: ``false``.
   * - ``proc_name``
     - |name gunicorn_process|
   * - ``settings_template``
     - |name template_settings_file| If specified, this file must be located in the ``application`` cookbook. Default value: ``se.py.erb`` (from the ``gunicorn`` cookbook).
   * - ``timeout``
     - |timeout worker|
   * - ``trace``
     - |trace functions_on_server| Default value: ``false``.
   * - ``umask``
     - |umask|
   * - ``worker_class``
     - |worker_class|
   * - ``worker_connections``
     - |worker_connections|
   * - ``workers``
     - |worker_processes|
