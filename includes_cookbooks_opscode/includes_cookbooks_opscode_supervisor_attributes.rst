.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This cookbook includes the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``node['supervisor']['inet_port']``
     - The port on which to serve the internal web-based admin dashboard. For example: 'localhost:9001'.
   * - ``node['supervisor']['inet_username']``
     - The user name used to authenticate to the HTTP server.
   * - ``node['supervisor']['inet_password']``
     - The password used during authentication to the HTTP server. This setting supports both clear text and SHA-1 hashed passwords (that are prefixed by ``{SHA}``).
   * - ``node['supervisor']['dir']``
     - The location of supervisor configuration files.
   * - ``node['supervisor']['log_dir']``
     - The location of supervisor log files.
   * - ``node['supervisor']['logfile_maxbytes']``
     - The maximum size (in bytes) of the ``supervisord`` log file. When this file reaches this size, it will be rotated. Default value: ``50MB``.
   * - ``node['supervisor']['logfile_backups']``
     - The number of backups of the log file that will be kept. Default value: ``10``.
   * - ``node['supervisor']['loglevel']``
     - The minimum severity level for logged messages. Default value ``info``.
   * - ``node['supervisor']['minfds']``
     - The minimum number of file descriptors that must be available before ``supervisord`` will start successfully.
   * - ``node['supervisor']['minprocs']``
     - The minimum number of process descriptors that must be available before ``supervisord`` will start successfully.
   * - ``node['supervisor']['version']``
     - Sets the version of ``supervisor`` to install; must be version 3.0 (or higher) to use ``minprocs`` and ``minfds``.