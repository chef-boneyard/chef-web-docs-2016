.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``backlog``
     - |backlog_connections| Default value: ``2048``.
   * - ``cookbook``
     - |cookbook template_location| Default value: ``gunicorn`` (the ``gunicorn`` cookbook).
   * - ``group``
     - |name group_owner_config_file|
   * - ``listen``
     - |port listen| Default value: ``0.0.0.0:8000`` which will listen on port 8000 for all interfaces.
   * - ``owner``
     - |owner file_config|
   * - ``path``
     - |path file_created|
   * - ``pid``
     - |pid lwrp gunicorn_config|
   * - ``preload_app``
     - |preload_app lwrp gunicorn_config|
   * - ``server_hooks``
     - |server_hooks lwrp gunicorn_config|
   * - ``template``
     - |template file_config| Default value: ``gunicorn.py.erb`` (included as part of the ``gunicorn`` cookbook).
   * - ``worker_class``
     - |worker_class| Default value: ``sync``.
   * - ``worker_keepalive``
     - |worker_max_keepalive| Default value: ``2``.
   * - ``worker_max_requests``
     - |worker_max_requests| Default value: ``0`` (which disables worker restarts).
   * - ``worker_processes``
     - |worker_processes| Default value: ``4``.
   * - ``worker_timeout``
     - |worker_kill_restart| Default value: ``60``.

