.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A handler is a class that inherits from ``Chef::Handler`` and implements the ``report()`` function. A handler may be assigned as a report or an exception handler (even though there is no real difference in the underlying code): a report handler runs when the ``success`` indicator is associated with the event message and an exception handler runs when the ``failed`` indicator is associated with the event message. Before ``report()`` is run, ``run_status`` is initialized by |chef|. ``run_status`` is an instance of ``Chef::RunStatus``, which is a class that keeps track of the status of a |chef| run. ``run_status`` provides the following properties:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Property
     - Description
   * - ``success?`` or ``failed?``
     - Indicates whether the |chef| run was successful.
   * - ``backtrace``
     - The backtrace for the exception, if present.
   * - ``exception``
     - The raw exception data, if present.
   * - ``formatted_exception``
     - The exception as a formatted string, for example: ``ExceptionClass: message``.
   * - ``node``
     - The node for which the |chef| run occurred.
   * - ``all_resources``
     - The list of all resources included in the ``resource_collection`` property for the current |chef| run.
   * - ``updated_resources``
     - The list of all resources included in the ``resource_collection`` property for the current |chef| run and that are marked as updated.
   * - ``elapsed_time``
     - The time elapsed between the ``start_time`` and ``finish_time`` of the |chef| run.
   * - ``start_time``
     - The time the |chef| run started.
   * - ``end_time``
     - The time the |chef| run ended.
   * - ``run_context``
     - An instance of ``Chef::RunContext`` that is used to keep track of the context of the |chef| run. It provides access to the following properties: ``cookbook_collection``, ``resource_collection``, and ``definitions``.

