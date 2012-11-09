.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``name``
     - The name of the application.
   * - ``environment_name``
     - The name of the environment.
   * - ``path``
     - The path to the application.
   * - ``owner``
     - The system owner that is responsible for the checked-out code.
   * - ``group``
     - The system group that is responsible for the checked-out code.
   * - ``strategy``
     - The deploy strategy: ``timestamped_deploy`` or ``deploy_revision`` (default). Use ``deploy_revision`` to ensure that the name of a release sub-directory is based on a revision identifier and puts deployed components under the destination location that is owned by the user who runs the application. For users of |git|, this will be the familiar SHA checksum. For users of |svn|, it will be the integer revision number. If a name other than a revision identifier is provided---branch names, tags, and so on---|chef| will ignore the alternate names and will look up the revision identifier and use it to name the release sub-directory. Use ``timestamped_deploy`` to name a release sub-directory with a timestamp in the form of YYYYMMDDHHMMSS. For example: /my/deploy/dir/releases/20121120162342.
   * - ``scm_provider``
     - The name of the source control management provider to be used.
   * - ``revision``
     - The revision to be checked out. This can be symbolic, like ``HEAD`` or it can be a source control management-specific revision identifier.
   * - ``repository``
     - The name of the sub-directory in which the pristine copy of an application’s source is kept.
   * - ``enable_submodules``
     - |git| only. Use to perform a sub-module initialization and update.
   * - ``environment``
     - A hash of the form ``{"ENV_VARIABLE"=>"VALUE"}``.
   * - ``deploy_key``
     - The RSA private key needed to deploy an application.
   * - ``force``
     - 
   * - ``rollback_on_error``
     - Indicates whether a deploy resource will rollback to a previously-deployed release if an error occurs when deploying a new release.
   * - ``purge_before_symlink``
     - An array of paths, relative to the application root, that are to be removed from a checkout before symbolic linking.
   * - ``create_dirs_before_symlink``
     - The directories to create before symbolic linking. This runs after ``purge_before_symlink``.
   * - ``symlinks``
     - A hash that maps files in a shared directory to their paths in the current release.
   * - ``symlink_before_migrate``
     - A hash that maps files in a shared directory into the current release. Runs before migration.
   * - ``migrate``
     - Indicates that the migration command will be run.
   * - ``migration_command``
     - A string that contains a shell command that can be executed to run a migration operation.
   * - ``restart_command``
     - A string that contains a shell command that can be executed to run a restart operation.
   * - ``packages``
     - A list of one (or more) packages to be installed along with the application.
   * - ``application_provider``
     - 
