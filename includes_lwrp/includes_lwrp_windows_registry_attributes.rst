.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``key_name``
     - The registry key to create or modify.
   * - ``values``
     - A |ruby hash| of values to be set under a registry key. The individual |ruby hash| items will become  ``value_name => value_data`` items in the registry key.
