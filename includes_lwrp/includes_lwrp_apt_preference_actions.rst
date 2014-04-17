.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:add``
     - Use to create a preferences file under ``/etc/apt/preferences.d``. This creates a "pin" for a package.
   * - ``:remove``
     - Use to remove a preferences file, which will "unpin" a package.
