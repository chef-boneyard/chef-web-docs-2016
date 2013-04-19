.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``after_restart``
     - |after_restart| Default value: ``deploy/after_restart.rb``.
   * - ``before_migrate``
     - |before_migrate| Default value: ``deploy/before_migrate.rb``.
   * - ``before_restart``
     - |before_restart| Default value: ``deploy/before_restart.rb``.
   * - ``before_symlink``
     - |before_symlink| Default value: ``deploy/before_symlink.rb``.
   * - ``branch``
     - The alias for the revision.
   * - ``create_dirs_before_symlink``
     - |create_dirs_before_symlink|
   * - ``deploy_to``
     - |deploy_to|
   * - ``environment``
     - |environment resource deploy|
   * - ``group``
     - |group resource deploy|
   * - ``keep_releases``
     - |keep_releases resource deploy|
   * - ``migrate``
     - |migrate resource deploy|
   * - ``migration_command``
     - |migration_command resource deploy|
   * - ``purge_before_symlink``
     - |purge_before_symlink| 
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
     - |symlinks| 
   * - ``symlink_before_migrate``
     - |symlink_before_migrate|
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

For example:

.. code-block:: ruby

   deploy "/my/deploy/dir" do
     repo "git@github.com/whoami/project"
     revision "abc123" # or "HEAD" or "TAG_for_1.0" or (subversion) "1234"
     user "deploy_ninja"
     enable_submodules true
     migrate true
     migration_command "rake db:migrate"
     environment "RAILS_ENV" => "production", "OTHER_ENV" => "foo"
     shallow_clone true
     keep_releases 10
     action :deploy # or :rollback
     restart_command "touch tmp/restart.txt"
     git_ssh_wrapper "wrap-ssh4git.sh"
     scm_provider Chef::Provider::Git # is the default, for svn: Chef::Provider::Subversion
   end
