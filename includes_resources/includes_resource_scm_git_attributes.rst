.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``additional_remotes``
     - |additional_remotes|
   * - ``checkout_branch``
     - Use to specify the name of a branch to be checked out. Default value: ``deploy``.
   * - ``depth``
     - |depth git_shallow_clone| The default behavior will do a full clone.
   * - ``destination``
     - |destination resource scm| Default value: the ``name`` of the resource block (see Syntax section above).
   * - ``enable_checkout``
     - Use to check out a repo from master. Default value: ``true``.
   * - ``enable_submodules``
     - |enable_submodules| Default value: ``false``.
   * - ``group``
     - |group deploy|
   * - ``provider``
     - Optional. |provider resource_parameter|
   * - ``reference``
     - |reference resource scm|
   * - ``remote``
     - |remote resource|
   * - ``repository``
     - |uri repository_git|
   * - ``revision``
     - |revision| Default value: ``HEAD``.
   * - ``ssh_wrapper``
     - |ssh_wrapper resource|
   * - ``user``
     - |user checked_out_code|
