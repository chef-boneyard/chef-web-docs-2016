.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``:backlog``
     - The maximum number of pending connections. Default value: ``2048``.
   * - ``:cookbook``
     - The cookbook in which a template file is located. Default value: ``gunicorn`` (the ``gunicorn`` cookbook).
   * - ``:group``
     - A string or identifier for the group owner of a configuration file.
   * - ``:listen``
     - The socket to bind. This value must be a string in the form: ``HOST``, ``HOST:PORT``, or ``unix:PATH``. Default value: ``0.0.0.0:8000`` which will listen on port 8000 for all interfaces.
   * - ``:owner``
     - A string or identifier for the owner for a configuration file.
   * - ``:path``
     - The path to the location in which the configuration file will be created.
   * - ``:pid``
     - The file name for the process identifier (PID) file. Default value: `` `` (no file).
   * - ``:preload_app``
     - Indicates whether application code should be loaded before worker processes are forked. Default value: ``false``.
   * - ``:server_hooks``
     - A hash with values that are rendered as |gunicorn| server hook functions named after the hash item's key name. Default value: ``{}`` (no server hooks).
   * - ``:template``
     - The template to use when rendering a configuration file. Default value: ``gunicorn.py.erb`` (included as part of the ``gunicorn`` cookbook).
   * - ``:worker_class``
     - The type of workers to use. Default value: ``sync``.
   * - ``:worker_keepalive``
     - The amount of time (in seconds) to wait for requests on a keep-alive connection. Default value: ``2``.
   * - ``:worker_max_requests``
     - The maximum number of requests a worker will process before restarting. Default value: ``0`` (which disables worker restarts).
   * - ``:worker_processes``
     - The number of worker processes available to handle requests. Default value: ``4``.
   * - ``:worker_timeout``
     - The amount of time (in seconds) to wait before a worker is killed and restarted. Default value: ``60``.

