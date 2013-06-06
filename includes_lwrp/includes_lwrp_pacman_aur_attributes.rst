.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``builddir``
     - |directory package_download| Default value: ``Chef::Config[:file_cache_path]/builds``.
   * - ``exists``
     - |exists package|
   * - ``options``
     - |command options|
   * - ``package_name``
     - |name package|
   * - ``patches``
     - |patch file_array| Default value: ``[]``.
   * - ``pkgbuild_src``
     - |use pkgbuild|
   * - ``version``
     - |version package|

