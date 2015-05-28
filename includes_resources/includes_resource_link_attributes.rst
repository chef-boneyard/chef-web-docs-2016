.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``group``
     - |group resource link|
   * - ``link_type``
     - |link_type| Default value: ``:symbolic``.
   * - ``mode``
     - |mode resource_file| Default value: ``777``.
       
       The behavior is different depending on the platform.
       
       |unix|- and |linux|-based systems: |mode *nix|
       
       |windows|: |mode windows security|
   * - ``owner``
     - |owner resource link|
   * - ``provider``
     - Optional. |provider resource_parameter|
   * - ``target_file``
     - |name_link| Default value: the ``name`` of the resource block. |see syntax|
   * - ``to``
     - |to resource link|

