.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The following table shows some of the events that may occur during a |chef client| run:

.. list-table::
   :widths: 100 420
   :header-rows: 1

   * - Event
     - Description
   * - ``:audit_phase_failed``
     - The |chef client| run audit phase has failed.
   * - ``:converge_failed``
     - The |chef client| run converge phase has failed.
   * - ``:recipe_not_found``
     - The |chef client| was unable to find the named recipe.
   * - ``:resource_failed``
     - A resource action has failed and will not be retried.
   * - ``:run_failed``
     - The |chef client| run has failed.

The full list of events is available at https://docs.chef.io/dsl_handlers.html#event-types.