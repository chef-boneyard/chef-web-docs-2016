.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A |chef client| on which |reporting| is configured always sends data to the |chef server|. Users of the |chef manager| web user interface, must belong to one (or both) of the following groups:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Group
     - Description
   * - ``reporting_readers``
     - Use to view and configure reports.
   * - ``reporting_writers``
     - (This group is not used by the current version of |reporting|.)

These groups do not exist by default, even after |reporting| has been installed to the |chef server|. If these groups are not created, only members of the ``admin`` security group will be able to create, initiate, and view reports.
