.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``backlog``
     - The maximum number of pending connections. Default value: ``2048``.
   * - ``cookbook``
     - The cookbook in which a template files is located (if it is not located in the current cookbook). Default value: ``gunicorn`` (the ``gunicorn`` cookbook).
   * - ``group``
     - The name of the group that owns the configuration file.
   * - ``listen``
     - The port on which the application will bind. This value must be a string in the form: ``HOST``, ``HOST:PORT``, or ``unix:PATH``. Default value: ``0.0.0.0:8000`` which will listen on port 8000 for all interfaces.
   * - ``owner``
     - The owner of a configuration file.
   * - ``path``
     - The path to the location in which the configuration file will be created.
   * - ``pid``
     - |name pid_file| Default value: `` `` (no file).
   * - ``preload_app``
     - Indicates whether an application is loaded before a worker process is forked. Default value: ``false``.
   * - ``server_hooks``
     - A |ruby hash| with values that are rendered as |gunicorn| server hook functions named after the |ruby hash| item's key name. Default value: ``{}`` (no server hooks).
   * - ``template``
     - The template to use when rendering a configuration file. Default value: ``gunicorn.py.erb`` (included as part of the ``gunicorn`` cookbook).
   * - ``worker_class``
     - The type of worker to use: ``sync``, ``eventlet``, ``gevent``, or ``tornado``. Default value: ``sync``.
   * - ``worker_keepalive``
     - The amount of time (in seconds) to wait for requests on a |keepalived| connection. Default value: ``2``.
   * - ``worker_max_requests``
     - The maximum number of requests a worker will process before restarting. Default value: ``0`` (which disables worker restarts).
   * - ``worker_processes``
     - The number of allowed worker processes. Default value: ``4``.
   * - ``worker_timeout``
     - The amount of time (in seconds) to wait before a worker is killed and restarted. Default value: ``60``.

