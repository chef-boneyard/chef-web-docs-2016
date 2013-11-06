.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

It is possible to initiate jobs from the |chef client|, such as from within a recipe based on an action to be determined as the recipe runs. For a |chef client| to be able to create, initiate, or read jobs, |pushy| that |chef client| to belong to one (or both) of the following custom groups:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Group
     - Description
   * - ``pushy_job_readers``
     - Use to view the status of jobs.
   * - ``pushy_job_writers``
     - Use to create and initiate jobs.

These groups do not exist by default, even after |pushy| has been installed to the |chef server|.

<insert To create a group topic here?>