.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``arch``
     - |architecture package|
   * - ``options``
     - |command options| Include directives such as --dry-run and other common apt-get options.
   * - ``package_name``
     - |name package| Default value: the ``name`` of the resource block (see Syntax section above).
   * - ``provider``
     - Optional. |provider resource_parameter|
   * - ``response_file``
     - Optional. Direct path to pre-seed file. |response_file| Default value: ``nil``.
   * - ``source``
     - Optional. Direct path to dpkg or deb package. |source resource package|
   * - ``version``
     - |version package| Default value: ``nil``.
