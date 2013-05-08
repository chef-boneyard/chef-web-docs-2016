.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``destination``
     - |destination resource scm|
   * - ``group``
     - |group resource scm|
   * - ``provider``
     - Optional. |provider resource_attribute|
   * - ``reference``
     - |reference resource scm|
   * - ``repository``
     - |repository resource scm|
   * - ``revision``
     - |revision resource scm|
   * - ``user``
     - |user resource scm|

For use with |git| only:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``additional_remotes``
     - |additional_remotes resource|
   * - ``depth``
     - |depth resource scm|
   * - ``enable_submodules``
     - |enable_submodules resource|
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