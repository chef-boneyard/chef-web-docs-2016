.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A handler is a class that inherits from ``Chef::Handler`` and implements the ``report()`` function. A handler may be assigned as a report or an exception handler (even though there is no real difference in the underlying code): a report handler runs when the ``success`` indicator is associated with the event message and an exception handler runs when the ``failed`` indicator is associated with the event message. Before ``report()`` is run, ``run_status`` is initialized by the |chef client|. ``run_status`` is an instance of ``Chef::RunStatus``, which is a class that keeps track of the status of a |chef client| run. ``run_status`` provides the following properties:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Property
     - Description
   * - ``success?`` or ``failed?``
     - |handler method_success|
   * - ``backtrace``
     - |handler method_backtrace|
   * - ``exception``
     - |handler method_exception|
   * - ``formatted_exception``
     - |handler method_formatted_exception|
   * - ``node``
     - |handler method_node|
   * - ``all_resources``
     - |handler method_all_resources|
   * - ``updated_resources``
     - |handler method_updated_resources|
   * - ``elapsed_time``
     - |handler method_elapsed_time|
   * - ``start_time``
     - |handler method_start_time|
   * - ``end_time``
     - |handler method_end_time|
   * - ``run_context``
     - |handler method_run_context|

