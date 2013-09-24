.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``destination``
     - |destination resource scm| Default value: the ``name`` of the resource block (see Syntax section above).
   * - ``group``
     - |group deploy| Default value: ``nil``.
   * - ``provider``
     - Optional. |provider resource_parameter|
   * - ``reference``
     - |reference resource scm|
   * - ``repository``
     - |uri repository|
   * - ``revision``
     - |revision| Default value: ``HEAD``.
   * - ``user``
     - |user checked_out_code| Default value: ``nil``.

For use with |git| only:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``additional_remotes``
     - |additional_remotes|
   * - ``depth``
     - |depth git_shallow_clone| Default value: ``nil`` (full clone).
   * - ``enable_submodules``
     - |enable_submodules| Default value: ``false``.
   * - ``remote``
     - |remote resource|
   * - ``ssh_wrapper``
     - |ssh_wrapper resource|

For use with |svn| only:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``svn_arguments``
     - |svn_arguments resource|
   * - ``svn_info_args``
     - |svn_info_args resource|
   * - ``svn_password``
     - |svn_password resource|
   * - ``svn_username``
     - |svn_username resource|