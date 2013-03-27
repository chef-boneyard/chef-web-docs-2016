.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``backlog``
     - |backlog lwrp gunicorn_config|
   * - ``cookbook``
     - |cookbook lwrp gunicorn_config|
   * - ``group``
     - |group lwrp gunicorn_config|
   * - ``listen``
     - |listen lwrp gunicorn_config|
   * - ``owner``
     - |owner lwrp gunicorn_config|
   * - ``path``
     - |path lwrp gunicorn_config|
   * - ``pid``
     - |pid lwrp gunicorn_config|
   * - ``preload_app``
     - |preload_app lwrp gunicorn_config|
   * - ``server_hooks``
     - |server_hooks lwrp gunicorn_config|
   * - ``template``
     - |template lwrp gunicorn_config|
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

