.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |chef client| uses six types of attributes to determine the value that is applied to a node during the |chef client| run. In addition, the |chef client| sources attribute values from up to five locations. The combination of attribute types and sources allows for up to 15 different competing values to be available to the |chef client| during the |chef client| run:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute Type
     - Description
   * - ``default``
     - |attribute_type default|
   * - ``force_default``
     - |attribute_type force_default|
   * - ``normal``
     - |attribute_type normal|
   * - ``override``
     - |attribute_type override|
   * - ``force_override``
     - |attribute_type force_override|
   * - ``automatic``
     - |attribute_type automatic|
