.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


.. warning:: Many optional settings should not be added to the |knife rb| file. The reasons for not adding them can vary. For example, using ``--yes`` as a default in the |knife rb| file will cause |knife| to always assume that "Y" is the response to any prompt, which may lead to undesirable outcomes. Other settings, such as ``--hide-healthy`` (used only with the ``knife status`` subcommand) or ``--bare-directories`` (used only with the ``knife list`` subcommand) probably aren't used often enough (and in the same exact way) to justify adding them to the |knife rb| file. In general, if the optional settings are not listed on :doc:`here </config_rb_knife>`, then consider adding the setting to  setting only after careful consideration. Do not use optional settings in a production environment until after the setting's performance has been validated in a safe testing environment.

The following list describes all of the optional settings that can be added to the |knife rb| file:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``knife[:admin]``
     - |admin client|
   * - ``knife[:after]``
     - |after|
   * - ``knife[:all]``
     - Indicates that all environments, cookbooks, cookbook versions, metadata, and/or data bags will be uploaded, deleted, generated, or tested. The context depends on which |knife| subcommand and argument is used.
   * - ``knife[:all_versions]``
     - |all cookbooks return|
   * - ``knife[:admin]``
     - |admin client| (This setting is available only for the open source |chef server|.)
   * - ``knife[:admin_client_name]``
     - 
   * - ``knife[:bare_directories]``
     - |d knife list|
   * - ``knife[:bootstrap_proxy]``
     - |bootstrap-proxy|
   * - ``knife[:bootstrap_version]``
     - |bootstrap-version|
   * - ``knife[:bootstrap_template]``
     - 
   * - ``knife[:concurrency]``
     - |concurrency|
   * - ``knife[:config_file]``
     - |config|
   * - ``knife[:depends]``
     - |include-dependencies|
   * - ``knife[:description]``
     - The description for an environment and/or a role.
   * - ``knife[:disable_editing]``
     - |no-editor|
   * - ``knife[:distro]``
     - |distro|
   * - ``knife[:download_directory]``
     - |dir|
   * - ``knife[:environment]``
     - |environment|
   * - ``knife[:exec]``
     - |exec|
   * - ``knife[:file]``
     - |file private key|
   * - ``knife[:force]``
     - |force directory|
   * - ``knife[:fqdn]``
     - |fqdn|
   * - ``knife[:freeze]``
     - |freeze|
   * - ``knife[:hide_healthy]``
     - |hide_healthy|
   * - ``knife[:host_key_verify]``
     - |[no-]host-key-verify|
   * - ``knife[:identity_file]``
     - |identity-file|
   * - ``knife[:initial]``
     - |initial|
   * - ``knife[:input]``
     - |input file|
   * - ``knife[:latest]``
     - |latest|
   * - ``knife[:manual]``
     - |manual-list|
   * - ``knife[:method]``
     - |method request type|
   * - ``knife[:name_only]``
     - |name only|
   * - ``knife[:name_status]``
     - |name status|
   * - ``knife[:no_deps]``
     - |skip-dependencies|
   * - ``knife[:platform]``
     - |platform|
   * - ``knife[:platform_version]``
     - |platform-version|
   * - ``knife[:pretty]``
     - |no-pretty|
   * - ``knife[:print_after]``
     - |print-after|
   * - ``knife[:purge]``
     - |purge cookbook|
   * - ``knife[:readme_format]``
     - |readme-format|
   * - ``knife[:recurse]``
     - Use to recursively delete, disable, or list a directory.
   * - ``knife[:repository]``
     - |repository|
   * - ``knife[:run_list]``
     - |run-list|
   * - ``knife[:script_path]``
     - |script-path|
   * - ``knife[:secret]``
     - |secret|
   * - ``knife[:secret_file]``
     - |secret-file|
   * - ``knife[:server_name]``
     - Same as node_name. Recommended configuration is to allow |ohai| to collect this value during each |chef| run.
   * - ``knife[:sort_reverse]``
     - |sort_reverse|
   * - ``knife[:ssh_attribute]``
     - |attribute ssh|
   * - ``knife[:ssh_gateway]``
     - |ssh-gateway|
   * - ``knife[:ssh_password]``
     - |ssh-password|
   * - ``knife[:ssh_port]``
     - |ssh-port|
   * - ``knife[:ssh_user]``
     - |ssh-user|
   * - ``knife[:template_file]``
     - |template-file|
   * - ``knife[:use_current_branch]``
     - |use-current-branch|
   * - ``knife[:use_sudo]``
     - |sudo|
   * - ``knife[:user]`` and/or ``knife[:user_home]``
     - |user|
   * - ``knife[:user_key]``
     - |file_public_key|
   * - ``knife[:user_password]``
     - |password user|
   * - ``knife[:yes]``
     - |yes|
