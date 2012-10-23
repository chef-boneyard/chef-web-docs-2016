.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use the following providers to use the |resource mount| resource in a recipe:

.. list-table::
   :widths: 130 80 40 250
   :header-rows: 1

   * - Long name
     - Short name
     - Default?
     - Notes
   * - ``Chef::Provider::Mount``
     - ``mount``
     - Yes
     - This is the default provider for all platforms, except for |windows|.
   * - ``Chef::Provider::Mount::Windows``
     - ``mount``
     - Yes
     - This is the default provider for the |windows| platform.
