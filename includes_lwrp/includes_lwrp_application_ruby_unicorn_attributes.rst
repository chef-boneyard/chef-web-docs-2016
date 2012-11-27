.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``before_fork``
     - The object that is called by the master process before executing the |unicorn| binary.
   * - ``bundler``
     - Indicates whether |unicorn|
   * - ``bundle_command``
     - 
   * - ``port``
     - 
   * - ``preload_app``
     - Indicates whether an application is loaded before a worker process is forked. Default value: ``false``.
   * - ``worker_processes``
     - The number of allowed worker processes.
   * - ``worker_timeout``
     - The amount of time (in seconds) before a worker process times out.
