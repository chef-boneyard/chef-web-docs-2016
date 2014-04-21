.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``builddir``
     - The directory to which a package is downloaded. Default value: ``Chef::Config[:file_cache_path]/builds``.
   * - ``exists``
     - Use when a package already exists.
   * - ``options``
     - One (or more) additional options that are passed to the command.
   * - ``package_name``
     - The name of the package.
   * - ``patches``
     - An array of files to be used as patches for the package. Default value: ``[]``.
   * - ``pkgbuild_src``
     - Indicates that a custom ``PKGBUILD`` file will be used. When ``true``, the |lwrp pacman aur| lightweight resource will look for a ``cookbook_file`` named ``PKGBUILD`` to use as package instructions. Default value: ``false``.
   * - ``version``
     - The version of a package to be installed or upgraded.

