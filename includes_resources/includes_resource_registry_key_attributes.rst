.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``architecture``
     - |architecture resource windows_registry|
   * - ``key``
     - |key_name resource windows_registry| This attribute defaults to the ``name`` of the resource if not specified.
   * - ``recursive``
     - |recursive resource windows_registry|

       .. note:: Be careful when using the ``:delete_key`` action with the ``recursive`` attribute. This will delete the registry key and all of its subkeys and all of the values associated with them. This cannot be undone by |chef|.
   * - ``values``
     - |values resource windows_registry|
       
       |values resource windows_registry types|

