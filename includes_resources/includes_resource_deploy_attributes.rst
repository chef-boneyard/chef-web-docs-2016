.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``after_restart``
     - |after_restart resource deploy|
   * - ``before_migrate``
     - |before_migrate resource deploy|
   * - ``before_restart``
     - |before_restart resource deploy|
   * - ``before_symlink``
     - |before_symlink resource deploy|
   * - ``branch``
     - The alias for the revision.
   * - ``create_dirs_before_symlink``
     - |create_dirs_before_symlink resource deploy| |layout create_dirs_before_symlink resource deploy|
   * - ``deploy_to``
     - |deploy_to resource deploy|
   * - ``environment``
     - |environment resource deploy|
   * - ``group``
     - |group resource deploy|
   * - ``migrate``
     - |migrate resource deploy|
   * - ``migration_command``
     - |migration_command resource deploy|
   * - ``purge_before_symlink``
     - |purge_before_symlink resource deploy| |layout purge_before_symlink resource deploy|
   * - ``repo``
     - |repo resource deploy|
   * - ``repository``
     - |repository resource deploy|
   * - ``repository_cache``
     - |repository_cache resource deploy|
   * - ``restart_command``
     - |restart_command resource deploy|
   * - ``revision``
     - |revision resource deploy|
   * - ``rollback_on_error``
     - |rollback_on_error resource deploy|
   * - ``scm_provider``
     - |scm_provider resource deploy|
   * - ``symlinks``
     - |symlinks resource deploy| |layout symlinks resource deploy|
   * - ``symlink_before_migrate``
     - |symlink_before_migrate resource deploy| |layout symlink_before_migrate resource deploy|
   * - ``user``
     - |user resource deploy|

The following attributes are for use with |git| only:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``enable_submodules``
     - |enable_submodules resource|
   * - ``git_ssh_wrapper``
     - |git_ssh_wrapper|
   * - ``remote``
     - |remote resource| Default value: ``origin``.
   * - ``shallow_clone``
     - |shallow_clone resource|
   * - ``ssh_wrapper``
     - |ssh_wrapper resource|

The following attributes are for use with |svn| only:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``svn_arguments``
     - |svn_arguments resource|
   * - ``svn_password``
     - |svn_password resource|
   * - ``svn_username``
     - |svn_username resource|

