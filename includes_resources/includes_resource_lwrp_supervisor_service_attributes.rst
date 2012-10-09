.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``:autorestart``
     - Indicates if a process is never auto-restarted (``false``), restarted when a program exits with an unknown exit code (``unexpected``), or unconditionally restarted (``true``).
   * - ``:autostart``
     - Indicates if a program starts automatically when |python supervisor| is started.
   * - ``:command``
     - A command that is run when the program starts.
   * - ``:directory``
     - The path to a directory in which a temporary chdir will occur.
   * - ``:environment``
     - A list of key-value pairs in the form of ``KEY=val1,KEY2=val2`` that will be placed in the environment for a child process.
   * - ``:exitcodes``
     - A list of expected exit codes for a program.
   * - ``:numprocs``
     - The number of instances that will be started by |python supervisor|.
   * - ``:numprocs_start``
     - An integer offset that is used to compute the number at which ``numprocs`` starts.
   * - ``:priority``
     - The relative priority of the program for start and shutdown ordering.
   * - ``:process_name``
     - A |python| string expression that is used to compose the supervisor process name for a process.
   * - ``:redirect_stderr``
     - Indicates that the STDERR output for a process is sent back to |python supervisor| using STDOUT.
   * - ``:serverurl``
     - The URL passed in the environment to the sub-process process.
   * - ``:service_name``
     - The name of a service.
   * - ``:startretries``
     - The number of serial failure attempts |python supervisor| will allow when attempting to start a program before giving up.
   * - ``:startsecs``
     - The length of time (in seconds) a program will stay running after startup, at which point the startup will be considered successful.
   * - ``:stopsignal``
     - The signal used to kill a program when a stop is requested: ``TERM``, ``HUP``, ``INT``, ``QUIT``, ``KILL``, ``USR1``, or ``USR2``.
   * - ``:stopwaitsecs``
     - The amount of time (in seconds) to wait (after ``stopsignal``) before a ``SIGKILL`` message is sent.
   * - ``:stderr_capture_maxbytes``
     - The maximum number of bytes written to capture for ``stderr_logfile``.
   * - ``:stderr_events_enabled``
     - Indicates whether events are omitted from ``stderr_logfile``.
   * - ``:stderr_logfile``
     - The location of the STDERR logfile.
   * - ``:stderr_logfile_backups``
     - The number of ``stderr_logfile`` backups to keep.
   * - ``:stderr_logfile_maxbytes``
     - The maximum size (in bytes) that may be consumed by ``stderr_logfile`` before it is rotated.
   * - ``:stdout_capture_maxbytes``
     - The maximum number of bytes written to capture for ``stdout_logfile``.
   * - ``:stdout_events_enabled``
     - Indicates whether events are omitted from ``stdout_logfile``.
   * - ``:stdout_logfile``
     - The location of the STDOUT logfile.
   * - ``:stdout_logfile_backups``
     - The number of ``stdout_logfile`` backups to keep.
   * - ``:stdout_logfile_maxbytes``
     - The maximum size (in bytes) that may be consumed by ``stdout_logfile`` before it is rotated.
   * - ``:umask``
     - An octal number that represents the umask of a process.
   * - ``:user``
     - The |unix| user account that runs the program.

