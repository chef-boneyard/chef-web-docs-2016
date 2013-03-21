.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Many settings are passed to the |chef server| using |knife|. The precedence for values passed using |knife| is:

#. A value passed via the command-line
#. A value contained in |knife rb|
#. A default value

In many cases it can be helpful to persist settings in the |knife rb| file so that they do not have to be passed to the |chef server| each time. 

.. note:: Before adding the following settings to the |knife rb| file, verify the settings by reviewing the documentation for the |knife| subcommands and/or |knife| plugins. Many of these settings are used by more than one subcommand and/or plugin. Some of these settings are used by all of them. And custom plugins can be configured to use the same settings as the core |knife| subcommands. It can be very useful to add these settings to the |knife rb| file, such as ``knife[:file]``, ``knife[:secret]``, and ``knife:[secret_key]`` can be much more useful when added to the |knife rb| file. But some settings, such as ``knife[:description]``, aren't as useful when added to the |knife rb| file, simply because role and environment descriptions should be specific to each role or environment, rather than be the same for all.

The following settings can be added to the |knife rb| file:

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
     - |all environments| |all cookbooks delete| |all cookbooks test| |all cookbooks| |all cookbooks generate| |all data bags|
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
     - |description environment| |description role|
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
     - |no recurse delete| |no recurse diff| |no recurse download| |r knife list| |no recurse upload|
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
