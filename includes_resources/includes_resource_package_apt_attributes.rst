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
   * - ``default_release``
     - |default_release apt| For example: ``stable``.
   * - ``options``
     - |command options| For example, common |aptget| directives, such as ``--no-install-recommends``. See the `apt-get man page <http://manpages.debian.net/cgi-bin/man.cgi?query=apt-get>`_ for the full list.
   * - ``package_name``
     - |name package| Default value: the ``name`` of the resource block. |see syntax|
   * - ``provider``
     - Optional. |provider resource_parameter| |see providers|
   * - ``response_file``
     - Optional. |response_file|
   * - ``response_file_variables``
     - Optional. |response_file variables|
   * - ``source``
     - Optional. |source resource apt_package|
   * - ``timeout``
     - |timeout|
   * - ``version``
     - |version package|
