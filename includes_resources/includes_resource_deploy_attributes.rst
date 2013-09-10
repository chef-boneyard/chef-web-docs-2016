.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
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
     - |create_dirs_before_symlink| Default value: ``%w{tmp public config}`` (or the same as ``["tmp", "public", "config"]``).
   * - ``deploy_to``
     - |deploy_to| Default value: the ``name`` of the resource block (see Syntax section above).
   * - ``environment``
     - |environment variables|
   * - ``group``
     - |group deploy| Default value: ``nil``.
   * - ``keep_releases``
     - |keep_releases| Default value: ``5``.
   * - ``migrate``
     - |migrate resource deploy|
   * - ``migration_command``
     - |migration_command resource deploy|
   * - ``provider``
     - Optional. |provider resource_attribute|
   * - ``purge_before_symlink``
     - |purge_before_symlink| 
   * - ``repo``
     - |repository git_or_svn|
   * - ``repository``
     - |uri repository|
   * - ``repository_cache``
     - |repository_cache| Default value: ``cached-copy``.
   * - ``restart_command``
     - |restart shell_command| Default value: ``nil``.
   * - ``revision``
     - |revision| Default value: ``HEAD``.
   * - ``rollback_on_error``
     - |rollback_on_error| Default value: ``false``.
   * - ``scm_provider``
     - |name scm_provider| Default value: ``Chef::Provider::Git``. Optional values: ``Chef::Provider::Subversion``.
   * - ``symlinks``
     - |symlinks| 
   * - ``symlink_before_migrate``
     - |symlink_before_migrate|
   * - ``user``
     - |user checked_out_code| Default value: ``nil``.

The following attributes are for use with |git| only:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``enable_submodules``
     - |enable_submodules| Default value: ``false``.
   * - ``git_ssh_wrapper``
     - |git_ssh_wrapper|
   * - ``remote``
     - |remote resource| Default value: ``origin``.
   * - ``shallow_clone``
     - |shallow_clone| Default value: ``false``.
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
