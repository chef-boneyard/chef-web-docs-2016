.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following attributes:

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
     - |daemon lwrp application_python_gunicorn|
   * - ``debug``
     - |debug lwrp application_python_gunicorn|
   * - ``host``
     - 
   * - ``keepalive``
     - |keepalive lwrp application_python_gunicorn|
   * - ``logfile``
     - |logfile lwrp application_python_gunicorn|
   * - ``loglevel``
     - |loglevel lwrp application_python_gunicorn|
   * - ``max_requests``
     - |worker_max_requests|
   * - ``pidfile``
     - |pidfile lwrp application_python_gunicorn|
   * - ``port``
     - 
   * - ``preload_app``
     - |preload_app lwrp application_python_gunicorn|
   * - ``proc_name``
     - |proc_name lwrp application_python_gunicorn|
   * - ``settings_template``
     - |settings_template lwrp application_python_gunicorn|
   * - ``timeout``
     - |timeout worker|
   * - ``trace``
     - |trace lwrp application_python_gunicorn| Default value: ``false``.
   * - ``umask``
     - |umask|
   * - ``worker_class``
     - |worker_class|
   * - ``worker_connections``
     - |worker_connections|
   * - ``workers``
     - |worker_processes|
