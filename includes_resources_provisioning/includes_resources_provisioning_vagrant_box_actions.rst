.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``vagrant_box`` driver-specific resource has the following actions:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Action
     - Description
   * - ``:create``
     - Default. Use to create a |vagrant| box by running the ``vagrant box add`` command.
   * - ``:delete``
     - Use to delete a |vagrant| box by running the ``vagrant box remove`` command.
   * - ``:nothing``
     - Use to do nothing.
