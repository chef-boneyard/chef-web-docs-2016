.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

.. note:: The following table contains paraphrased descriptions for quick reference. See http://linux.die.net/man/5/yum.conf for complete descriptions of these attributes as they exist from the |yum| command line.

|description resource_attributes_intro|

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``alwaysprompt``
     - Indicates whether |yum| will prompt for confirmation when the list of packages to be installed exactly matches the list of packages given from the command line.
   * - ``assumeyes``
     - Indicates whether |yum| will prompt for confirmation of critical actions.
   * - ``bandwidth``
     - The maximum amount of network bandwidth (in bytes).
   * - ``bugtracker_url``
     - The URL at which bugs are filed.
   * - ``clean_requirements_on_remove``
     - Indicates whether package dependencies are also removed when a package is removed.
   * - ``cachedir``
     - The directory in which |yum| stores cache and db files. Default value: ``/var/cache/yum/$basearch/$releasever``.
   * - ``color``
     - Indicates whether color output is displayed.
   * - ``color_list_available_downgrade``
     - The color used for a package downgrade.
   * - ``color_list_available_install``
     - The color used for a package install.
   * - ``color_list_available_reinstall``
     - The color used for a package reinstall.
   * - ``color_list_available_upgrade``
     - The color used for a package upgrade.
   * - ``color_list_installed_extra``
     - The color used when a package to be installed does not match an available package with the same name and architecture.
   * - ``color_list_installed_newer``
     - The color used when a package to be installed are newer than an available package with the same name and architecture.
   * - ``color_list_installed_older``
     - The color used when a package to be installed are older than an available package with the same name and architecture.
   * - ``color_list_installed_reinstal``
     - The color used for a package reinstall.
   * - ``color_search_match``
     - The color used for text matches in search.
   * - ``color_update_installed``
     - The color used for a package in the updates list, which are already installed.
   * - ``color_update_local``
     - The color used for a package in the updates list, which are already downloaded.
   * - ``color_update_remote``
     - The color used for a package in the updates list, which need to be downloaded.
   * - ``commands``
     - A list of commands to run when no functional commands are specified on the command line.
   * - ``debuglevel``
     - The output level for debug messages. Default value: ``2``.
   * - ``diskspacecheck``
     - Indicates whether |yum| checks for sufficient disk space before a transaction is run.
   * - ``distroverpkg``
     - The package used by |yum| to determine the version for a distribution.
   * - ``enable_group_conditionals``
     - Indicates whether |yum| allows conditional pages.
   * - ``errorlevel``
     - The output level for error messages.
   * - ``exactarch``
     - Indicates whether |yum| will update only packages that match the architecture already installed. Default value: ``true``.
   * - ``exclude``
     - A space-separated list of packages to be excluded from updates and installs.
   * - ``gpgcheck``
     - Indicates whether |yum| will perform a |gnupg| signature check on packages. Default value: ``true``.
   * - ``group_package_types``
     - The types of packages installed when ``groupinstall`` is called. Possible values: ``default``, ``mandatory``, and ``optional``.
   * - ``groupremove_leaf_only``
     - Indicates whether all packages in a group will be removed. Set this value to ``1`` to remove only those packages that are not required by another package.
   * - ``history_list_view``
     - Use to set which column of information is displayed in the |yum| history list: ``cmds`` (display the command-line for the transaction), ``single-user-commands`` (display users, if more than one), or ``users`` (display the user who initiated the transaction).
   * - ``history_record``
     - Indicates whether |yum| should record history entries for transactions. This attribute typically requires extra disk space and may take longer to process than when this attribute is not used; however, when this attribute is not enabled, |yum| may not be able to provide warnings for problems that may arise.
   * - ``history_record_packages``
     - A list of package names that should be recorded as having helped the transaction.
   * - ``http_caching``
     - Use to define how upstream HTTP caches handle HTTP downloads. Possible values: ``all`` (cache all HTTP downloads), ``none`` (cache no HTTP downloads), or ``packages`` (cache only |rpm| downloads, but not repository metadata downloads).
   * - ``installonly_limit``
     - The number of packages listed in ``installonlypkgs``. Set to ``0`` to disable. Default value: ``3``.
   * - ``installonlypkgs``
     - A list of package provides that should only be installed (and never updated).
   * - ``installroot``
     - Use to specify an alternate ``installroot``.
   * - ``keepalive``
     - Indicates whether HTTP keepalive is used (when available).
   * - ``keepcache``
     - Indicates whether the cache of headers and packages are kept after a successful installation. Default value: ``false``.
   * - ``kernelpkgnames``
     - A list of package names that are kernels.
   * - ``localpkg_gpgcheck``
     - Indicates whether |yum| should perform a |gnu pg| signature check on local packages.
   * - ``logfile``
     - The full directory and file name for the location in which |yum| should write a log file. Default value: ``/var/log/yum.log``.
   * - ``max_retries``
     - 
   * - ``mdpolicy``
     - The metadata download policy for the repository metadata index.
   * - ``metadata_expire``
     - The amount of time (in seconds) before metadata expires.
   * - ``mirrorlist_expire``
     - The amount of time (in seconds) after which the locally-cached mirror list will expire.
   * - ``multilib_policy``
     - Use to install all possible architectures for any package or only the best architecture for the platform. Possible values: ``all`` or ``best``.
   * - ``obsoletes``
     - Indicates whether obsoletes logic processing is used during distribution level upgrades. Default value: ``1``.
   * - ``overwrite_groups``
     - Indicates whether |yum| will use all matching repositories or only the last matching repository.
   * - ``password``
     - The password used with ``username`` for basic authentication.
   * - ``path``
     - 
   * - ``persistdir``
     - 
   * - ``pluginconfpath``
     - The list of directories in which |yum| should look for plugin configuration files.
   * - ``pluginpath``
     - The list of directories in which |yum| should look for plugin modules.
   * - ``plugins``
     - Indicates whether plugins are enabled. Default value: ``1`` (enabled).
   * - ``protected_multilib``
     - Indicates whether |yum| will perform a check to ensure multilib packages are of the same version.
   * - ``protected_packages``
     - The list of packages that should never be completely removed by |yum|.
   * - ``proxy``
     - The URL for the proxy server.
   * - ``proxy_password``
     - The proxy password.
   * - ``proxy_username``
     - The user name for the proxy.
   * - ``recent``
     - The age (in days) of a package, after which a package is no longer considered a "recent" package.
   * - ``repo_gpgcheck``
     - Indicates whether |yum| will perform a |gnu pg| signature check on data in the repository.
   * - ``reset_nice``
     - Indicates whether |yum| will attempt to reset the nice value to zero before running the transaction.
   * - ``rpmverbosity``
     - Use to set the output level: ``critical``, ``debug``, ``info`` (default), ``emergency``, ``error``, or ``warn``.
   * - ``showdupesfromrepos``
     - Indicates whether duplicate packages are shown. When false, only the newest packages are shown.
   * - ``skip_broken``
     - Indicates whether packages are removed from the transaction if they are causing problems.
   * - ``ssl_check_cert_permissions``
     - Indicates whether |yum| should check permissions on both local and remote paths for certificates.
   * - ``sslcacert``
     - The path to the directory in which the certificate authorities |yum| should use to verify |ssl| certificates are located.
   * - ``sslclientcert``
     - The path to the |ssl| client certificate that |yum| should use to connect to repositories and/or remote sites.
   * - ``sslclientkey``
     - The path of the location in which the |ssl| client key used by |yum| is located.
   * - ``sslverify``
     - Indicates whether |yum| verifies |ssl| certificates.
   * - ``syslog_device``
     - The path of the location to which syslog messages are sent.
   * - ``syslog_facility``
     - The facility name for syslog messages.
   * - ``syslog_ident``
     - The program name for syslog messages.
   * - ``throttle``
     - Indicates whether bandwidth throttling is enabled for downloads. When set to ``0``, bandwidth throttling is disabled. When set to an integer, along with ``k``, ``M``, or ``G``, represents the bandwidth value. For example: ``6.5k`` represents 6.5 kilobytes per second and ``4M`` represents 4 megabytes per second. Use a ``%`` to assign an integer as a percentage of total bandwidth. For example: ``80%`` will use 80% of the total available bandwidth.
   * - ``timeout``
     - The amount of time (in seconds) to wait before a connection times out.
   * - ``tolerant``
     - Indicates whether |yum| will be tolerant of errors that may occur on the command line.
   * - ``tsflags``
     - A comma- or space-separated list of transaction flags to be passed to the transaction set.
   * - ``username``
     - The user name for basic authentication to a repository or to a URL.
