.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The following table shows some of the events that may occur during a |chef client| run:

.. list-table::
   :widths: 100 420
   :header-rows: 1

   * - Event
     - Description
   * - ``:run_started``
     - The |chef client| run has started.
   * - ``:run_completed``
     - The |chef client| run has completed.
   * - ``:run_failed``
     - The |chef client| run has failed.
   * - ``:ohai_completed``
     - The |ohai| run has completed.
   * - ``:policyfile_loaded``
     - The policy file was loaded.
   * - ``:cookbook_sync_failed``
     - The |chef client| was unable to synchronize cookbooks.
   * - ``:recipe_not_found``
     - The |chef client| was unable to find the named recipe.
   * - ``:converge_complete``
     - The |chef client| run converge phase is complete.
   * - ``:converge_failed``
     - The |chef client| run converge phase has failed.
   * - ``:audit_phase_failed``
     - The |chef client| run audit phase has failed.
   * - ``:control_example_failure``
     - The named control group's processing has failed.
   * - ``:resource_failed``
     - A resource action has failed and will not be retried.

The full list of events is available at https://docs.chef.io/dsl_handlers.html.