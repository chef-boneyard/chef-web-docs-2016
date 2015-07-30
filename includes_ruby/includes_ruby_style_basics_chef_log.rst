.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

``Chef::Log`` extends ``Mixlib::Log`` and will print log entries to the default logger that is configured for the machine on which the |chef client| is running. (To create a log entry that is built into the resource collection, use the |resource log| resource instead of ``Chef::Log``.)

The following log levels are supported:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Log Level
     - Syntax
   * - Debug
     - ``Chef::Log.debug('string')``
   * - Error
     - ``Chef::Log.error('string')``
   * - Fatal
     - ``Chef::Log.fatal('string')``
   * - Info
     - ``Chef::Log.info('string')``
   * - Warn
     - ``Chef::Log.warn('string')``

.. note:: The parentheses are optional, e.g. ``Chef::Log.info 'string'`` may be used instead of ``Chef::Log.info('string')``.