.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``group``
     - **Ruby Types:** Integer, String

       |group resource link|
   * - ``link_type``
     - **Ruby Type:** Symbol

       |link_type| Default value: ``:symbolic``.
   * - ``mode``
     - **Ruby Types:** Integer, String

       |mode resource_file| Default value: ``777``.
       
       The behavior is different depending on the platform.
       
       |unix|- and |linux|-based systems: |mode *nix|
       
       |windows|: |mode windows security|
   * - ``owner``
     - **Ruby Types:** Integer, String

       |owner resource link|
   * - ``provider``
     - **Ruby Type:** Chef Class

       Optional. |provider resource_parameter|
   * - ``target_file``
     - **Ruby Type:** String

       |name_link| |resource_block_default| |see syntax|
   * - ``to``
     - **Ruby Type:** String

       |to resource link|
