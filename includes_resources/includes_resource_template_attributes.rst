.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``cookbook``
     - |cookbook file_location| Default value: ``nil`` (the current cookbook).
   * - ``group``
     - |windows group_identifier|
   * - ``helper``
     - |helper| Default value: ``{}``.
   * - ``helpers``
     - |helpers| Default value: ``[]``.
   * - ``inherits``
     - |windows| only. |inherits windows security| Default value: ``true``.
   * - ``local``
     - |local resource template|
   * - ``mode``
     - |mode resource_file|
       
       The behavior is different depending on the platform.
       
       |unix|- and |linux|-based systems: |mode *nix|
       
       |windows|: |mode windows security|
   * - ``owner``
     - |owner windows security|	
   * - ``provider``
     - Optional. |provider resource_attribute|
   * - ``rights``
     - |windows| only. |rights windows security|
   * - ``source``
     - The location of a file in the ``/templates`` directory in a cookbook located in the |chef repo|. Can be used to distribute specific files to specific platforms (see the section "File Specificity", below). Default value: the ``name`` of the resource block (see Syntax section above).
   * - ``variables``
     - |variables passed_to_template|
