.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``:app_module``
     - Set this value to ``djano`` to run a |django| application; any other string or symbol will build a |gunicorn| base command.
   * - ``:settings_template``
     - A template to render to create the ``gunicorn_config.py`` file. Default value: ``se.py.erb`` (from the ``gunicorn`` cookbook).
   * - ``:host``
     - 
   * - ``:port``
     - 
   * - ``:backlog``
     - The maximum number of pending connections.
   * - ``:workers``
     - The number of worker processes for handling requests.
   * - ``:worker_class``
     - The type of worker to use: ``sync``, ``eventlet``, ``gevent``, or ``tornado``.
   * - ``:worker_connections``
     - The maximum number of simultaneous clients.
   * - ``:max_requests``
     - The maximum number of request a worker will process before restarting.
   * - ``:timeout``
     - The amount of time (in seconds) that a worker can be silent before it is killed and restarted.
   * - ``:keepalive``
     - The amount of time (in seconds) to wait for requests on a Keep-Alive connection.
   * - ``:debug``
     - Indicates whether debugging is turned on. Default value: ``false``.
   * - ``:trace``
     - Indicates whether trace functions are executed by the server. Default value: ``false``.
   * - ``:preload_app``
     - Indicates that application code is loaded before worker processes are forked. Default value: ``false``.
   * - ``:daemon``
     - Indicates that the |gunicorn| process is daemonized.
   * - ``:pidfile``
     - A file name to use for the PID file.
   * - ``:umask``
     - A bit mask used for the file mode on files written by |gunicorn|.
   * - ``:logfile``
     - A file to which log entries are written.
   * - ``:loglevel``
     - The granularity of error logging: ``debug``, ``info``, ``warning``, ``error``, or ``critical``.
   * - ``:proc_name``
     - The name of an instance of |gunicorn|. This attribute is only necessary when more than one instance of |gunicorn| is running.