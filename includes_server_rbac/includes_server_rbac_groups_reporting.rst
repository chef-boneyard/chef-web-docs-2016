.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A |chef client| on which |reporting| is configured always sends data to the |chef server|. Users of the |chef manage| web user interface must belong to the following group:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Group
     - Description
   * - ``reporting_readers``
     - Use to view and configure reports.

This group does not exist by default, even after |reporting| has been installed to the |chef server|. If this group is not created, all members of the organization will be able to view reports.

.. SAVE FOR LATER
..
.. must belong to one (or both) of the following groups:
..
..   * - ``reporting_writers``
..     - (This group is not used by the current version of |reporting|.)
