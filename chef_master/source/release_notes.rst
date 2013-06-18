=====================================================
Release Notes: Chef 11.6.0
=====================================================

The following items are new for |chef 11-6| and/or are changes from previous versions of |chef|.


What's New
=====================================================
The following items are new for |chef 11-6| and/or are changes from previous versions of |chef|.


Atomic File Updates
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_common_atomic_update.rst


|resource file|-based Resources
-----------------------------------------------------
Prior to |chef 11-6|, |chef| relied on the underlying |ruby| implementation to define behaviors for file-based resources (|resource cookbook_file|, |resource file|, |resource remote_file|, and |resource template|). These resources have been standardized and are now all fully based on the |resource file| resource.

* File-based providers now create all files with the same default permissions. This default is determined by operating system, file system type, and umask settings.
* When an |ssh| configuration file is created using the |resource cookbook_file| or |resource template| resources and the file mode for that |ssh| configuration file is not specified, it is possible for incorrect permissions to be applied. In previous versions of |chef|, |chef| would attempt to create the file with ``0600`` permissions if the file mode was not specified. For example:

   .. code-block:: ruby

      cookbook_file "/home/bob/.ssh/authorized_keys" do
        owner "bob"
        group "bob"
      end

   In |chef| 11.6, |chef| may create files with other permissions---such as ``0644``---when the file mode is not specified. This may create situations where the correct permissions for an |ssh| configuration file are not applied, and subsequent |ssh| operation could fail. Use the ``mode`` attribute to ensure the correct permissions are applied to a file. For example:

   .. code-block:: ruby

      cookbook_file "/home/bob/.ssh/authorized_keys" do
        owner "bob"
        group "bob"
        mode 0600
      end


* File-based providers now have a defined behavior for when they encounter something other than a file when attempting to update a file. The ``force_unlink`` attribute is used to trigger an error (default) or to overwrite the target with the specified file. See the attributes section (below) for more information about this attribute.
* Many methods that were present in the file-based providers prior to |chef 11-6| have been deprecated. If a custom provider has been authored that subclasses the pre-|chef 11-6| file-based providers, the behavior of that custom provider should be re-tested after upgrading to |chef 11-6| to verify all of the desired behaviors.

New attributes (common to all |resource file|-based resources):

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``atomic_update``
     - |atomic_update|
   * - ``force_unlink``
     - |force_unlink|


Updated File-based Attributes
-----------------------------------------------------
The following attributes for |resource file|-based resources have been updated:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``source``
     - |source file_location|


New |resource remote_file| Attributes
-----------------------------------------------------
The |resource remote_file| resource was updated to be fully-based on the |resource file| resource. In addition:

* The ``source`` attribute was updated to support FTP (``ftp://``) and local file (``file://``) URIs

New attributes are available:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``ftp_active_mode``
     - |ftp_active_mode| Default value: ``false``.
   * - ``headers``
     - |headers resource remote_file| Default value: ``{}``.
   * - ``use_conditional_get``
     - |use_conditional_get| Default value: ``true``.
   * - ``use_etag``
     - |use_etag| Default value: ``true``.
   * - ``use_last_modified``
     - |use_last_modified| Default value: ``true``.


New |resource template| Attributes
-----------------------------------------------------
The |resource remote_file| resource was updated to be fully-based on the |resource file| resource. In addition:

* The ``source`` attribute was updated to support FTP and local file URIs

New attributes are available:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``helper``
     - |helper| Default value: ``{}``.
   * - ``helpers``
     - |helpers| Default value: ``[]``.


Helper Methods
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_template_helper.rst

**Inline Helper Methods**

.. include:: ../../step_resource/step_resource_template_inline_method.rst

**Inline Helper Modules**

.. include:: ../../step_resource/step_resource_template_inline_module.rst

**Cookbook Library Modules**

.. include:: ../../step_resource/step_resource_template_library_module.rst


New |client rb| Settings
-----------------------------------------------------
New settings have been added to the |client rb| file:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``data_bag_decrypt_minimum_version``
     - |data_bag_decrypt_minimum_version| For example:
       ::
 
          data_bag_decrypt_minimum_version "2"
   * - ``enable_selinux_file_permission_fixup``
     - |enable_selinux_file_permission_fixup| For example:
       ::
 
          enable_selinux_file_permission_fixup true
   * - ``file_atomic_update``
     - |file_atomic_update| For example:
       ::
 
          file_atomic_update false


New |knife| Subcommands
-----------------------------------------------------
New subcommands have been added to |knife|:

* |subcommand knife deps|
* |subcommand knife edit|
* |subcommand knife xargs|

knife deps
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_deps.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_deps_syntax.rst

**Options**

.. include:: ../../includes_knife/includes_knife_deps_options.rst

Many of these settings are also configurable in the |knife rb| file.

knife edit
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_edit.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_edit_syntax.rst

**Options**

.. include:: ../../includes_knife/includes_knife_edit_options.rst

Many of these settings are also configurable in the |knife rb| file.

knife xargs
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_xargs.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_xargs_syntax.rst

**Options**

.. include:: ../../includes_knife/includes_knife_xargs_options.rst

Many of these settings are also configurable in the |knife rb| file.

Updates to |knife| Subcommands
-----------------------------------------------------
The following updates have been made to |knife| subcommands:

* The |knife| essentials group of subcommands can be used with all objects in the |chef| repository and/or on the |chef server|: ``clients/``, ``cookbooks/``, ``data_bags/``, ``environments/``, ``nodes``, ``roles/``, and ``users``
* The |knife| essentials group of subcommands can be used with the following objects located in |chef hosted|: ``acls``, ``groups``, and ``containers``
* The |subcommand knife download| subcommand can access all objects on the |chef server| and can now be used to pull a full-fidelity backup of the entire |chef| organization




NEW KNIFE SETTING

New knife-essentials Options
-----------------------------------------------------
New settings have been added to the |knife rb| file:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``--OPTION_NAME_GOES_HERE``
     - xxxxx
   * - ``--concurrency``
     - Use to enable parallel requests. Default value: ``10`` (where ``10`` equals "ten parallel requests")



New |knife rb| Settings
-----------------------------------------------------
New settings have been added to the |knife rb| file:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``versioned_cookbooks_true``
     - Use to append cookbook versions to cookbooks. Set to ``false`` to hide cookbook versions: ``cookbooks/apache``. Set to ``true`` to show cookbook versions: ``cookbooks/apache-1.0.0`` and/or ``cookbooks/apache-1.0.1``. When this setting is ``true``, |subcommand knife download| will download ALL cookbook versions, which can be useful if a full-fidelity backup of data on the |chef server| is required. For example:
       ::
 
          versioned_cookbooks_true true



What's Fixed
=====================================================
The following bugs were fixed:

* http://tickets.opscode.com/browse/CHEF-679 --- remote_file acts unexpectedly when it encounters a link
* http://tickets.opscode.com/browse/CHEF-1162 --- Deploy should redeploy when the deploy directory is removed
* http://tickets.opscode.com/browse/CHEF-1707 --- unable to set password for user on solaris
* http://tickets.opscode.com/browse/CHEF-1782 --- remote_file gives deceptive error message replacing remote_file of running process
* http://tickets.opscode.com/browse/CHEF-1967 --- Mount provider should be able to allow "none" as a valid mountpoint
* http://tickets.opscode.com/browse/CHEF-2406 --- pretty knife status is ugly on windows
* http://tickets.opscode.com/browse/CHEF-2420 --- Git resource always re-checks out unchanged annotated tags.
* http://tickets.opscode.com/browse/CHEF-2467 --- 11: Attributes set in role not available via node object when running shef in client mode.
* http://tickets.opscode.com/browse/CHEF-2682 --- Redirected API requests can result in confusing error messages
* http://tickets.opscode.com/browse/CHEF-2694 --- ErrorHandler json format can cause complete meltdown of chef client
* http://tickets.opscode.com/browse/CHEF-2741 --- deploy resource does not recover from failures partway through operation on future invocations
* http://tickets.opscode.com/browse/CHEF-2770 --- user_valid_regex is too restrictive
* http://tickets.opscode.com/browse/CHEF-2840 --- SSL Verification fails using omnibus installer because of missing certs
* http://tickets.opscode.com/browse/CHEF-3005 --- chef-client ignores port specification in an HTTPS URL
* http://tickets.opscode.com/browse/CHEF-3192 --- File providers in whyrun branch need cleanup in how they handle tempfiles
* http://tickets.opscode.com/browse/CHEF-3237 --- Expanding '~/Library/LaunchAgents' fails resolving HOME when running chef-client as root
* http://tickets.opscode.com/browse/CHEF-3307 --- Name attribute in metadata.rb doesnt seem to actually work
* http://tickets.opscode.com/browse/CHEF-3332 --- The route resource provider will always delete config file even for :add action
* http://tickets.opscode.com/browse/CHEF-3366 --- zypper provider for package resource can block
* http://tickets.opscode.com/browse/CHEF-3386 --- 11: Chef init script improper PID check
* http://tickets.opscode.com/browse/CHEF-3442 --- Portage package provider souldn't raise an error "Multiple packages found for ..." when the category is specified.
* http://tickets.opscode.com/browse/CHEF-3452 --- uploading frozen cookbooks shows unfriendly error message
* http://tickets.opscode.com/browse/CHEF-3471 --- knife bootstrap of a Solaris 10 host is an immediate failure
* http://tickets.opscode.com/browse/CHEF-3516 --- 11: Some knife commands emit Errno::EPIPE when used in a pipeline
* http://tickets.opscode.com/browse/CHEF-3535 --- Chef::REST doesn't require 'chef/platform' but uses it
* http://tickets.opscode.com/browse/CHEF-3557 --- File Security Metadata Reporting is Broken on Windows
* http://tickets.opscode.com/browse/CHEF-3683 --- 11: Chef::Node objects should be sortable
* http://tickets.opscode.com/browse/CHEF-3685 --- rspec tests fail because chef-10.16.2.gem does not contain .dotfile
* http://tickets.opscode.com/browse/CHEF-3690 --- refactor of windows_service.rb has broken chef-client when run as windows service
* http://tickets.opscode.com/browse/CHEF-3772 --- Managing services on Solaris and SmartOS does not works well.
* http://tickets.opscode.com/browse/CHEF-3779 --- Add -A (forward SSH agent) option to knife commands
* http://tickets.opscode.com/browse/CHEF-3781 --- Add knife deps and knife-essentials changes from 1.0.0
* http://tickets.opscode.com/browse/CHEF-3803 --- mount resource does not update fstab entry when mount options have changed
* http://tickets.opscode.com/browse/CHEF-3804 --- device_mount_regex in mount provider does not handle symlinks correctly
* http://tickets.opscode.com/browse/CHEF-3847 --- LanguageIncludeRecipe deprecation warning is incorrect
* http://tickets.opscode.com/browse/CHEF-3858 --- Unsuccessful decryption of encrypted data bag items does not always cause an error
* http://tickets.opscode.com/browse/CHEF-3872 --- chef-client fails when run in open source XenServer ( platform xcp )
* http://tickets.opscode.com/browse/CHEF-3878 --- Chef should have a native partial search library
* http://tickets.opscode.com/browse/CHEF-3895 --- Cannot Upload Cookbooks
* http://tickets.opscode.com/browse/CHEF-3903 --- File resource doesn't handle binary correctly on windows
* http://tickets.opscode.com/browse/CHEF-3920 --- Repeated text in converge_by message for LWRPs when running in why_run mode
* http://tickets.opscode.com/browse/CHEF-3932 --- Later Knife.deps (i.e. dependency lazy loading) call overrides the earlier block
* http://tickets.opscode.com/browse/CHEF-3933 --- Gem Package provider incompatible with rubygems 2.0
* http://tickets.opscode.com/browse/CHEF-3935 --- Logger mutex causes errors in trap handlers with ruby 2.0
* http://tickets.opscode.com/browse/CHEF-3937 --- Chef::Knife::CookbookUpload is missing [require 'chef/cookbook_uploader'] causing exceptions from ref on line 230
* http://tickets.opscode.com/browse/CHEF-3938 --- Make gpg checks configurable in the zypper package provider
* http://tickets.opscode.com/browse/CHEF-3949 --- File Provider Refactor
* http://tickets.opscode.com/browse/CHEF-3963 --- and_return with should_not_receive is deprecated in rspec
* http://tickets.opscode.com/browse/CHEF-3978 --- remote_file does not support why-run correctly
* http://tickets.opscode.com/browse/CHEF-3979 --- remote_file source "downloaded from" is empty, but works
* http://tickets.opscode.com/browse/CHEF-3982 --- wget/curl dep in chef-full knife bootstrap script fails on Solaris 10
* http://tickets.opscode.com/browse/CHEF-4010 --- Chef client does not release lock when connection to server failed
* http://tickets.opscode.com/browse/CHEF-4015 --- suse group provider is broken on openSUSE 12.3 with shadow utils
* http://tickets.opscode.com/browse/CHEF-4038 --- File diffs in functional tests run very slowly under jenkins on windows 2k8
* http://tickets.opscode.com/browse/CHEF-4050 --- include etags, last-modified, expires and cache-control header handling in Chef::REST
* http://tickets.opscode.com/browse/CHEF-4065 --- change chef-client config default to use client_fork
* http://tickets.opscode.com/browse/CHEF-4082 --- When the file / template has a hardcoded path defined (either set via node attribute or hard coded as in the example), the notifies parameter does not work
* http://tickets.opscode.com/browse/CHEF-4083 --- Typo in status running chef-client
* http://tickets.opscode.com/browse/CHEF-4100 --- Chef::Util::FileEdit raise()s if file exists but is just empty -- this is bogus
* http://tickets.opscode.com/browse/CHEF-4102 --- chef-apply ignores all command line flags
* http://tickets.opscode.com/browse/CHEF-4114 --- Broken raise of ConfigurationError when log_location not writable
* http://tickets.opscode.com/browse/CHEF-4115 --- The config file's path isn't shown in exceptions
* http://tickets.opscode.com/browse/CHEF-4118 --- Event handlers should get run_started events
* http://tickets.opscode.com/browse/CHEF-4123 --- Chef-10.24.4 break Chef-server bootstrap installation
* http://tickets.opscode.com/browse/CHEF-4135 --- Malformed arguments to notifies fail without a helpful message
* http://tickets.opscode.com/browse/CHEF-4153 --- Requiring chef/node throws a NameError
* http://tickets.opscode.com/browse/CHEF-4158 --- auth_credentials_spec test sets the http_proxy variables twice
* http://tickets.opscode.com/browse/CHEF-4176 --- Chef 11 Default knife chef_server_url References Chef 10 Servers
* http://tickets.opscode.com/browse/CHEF-4199 --- usermod for changing groups on SmartOS should use -G
* http://tickets.opscode.com/browse/CHEF-4208 --- Monkey Patch Dir.rb exception on windows
* http://tickets.opscode.com/browse/CHEF-4233 --- 'knife upload' of encrypted data bags is adding extra keys to the data bag
* http://tickets.opscode.com/browse/CHEF-4236 --- resource "file" is non-idempotent when specifying file mode in combination with a non-existing user
* http://tickets.opscode.com/browse/CHEF-4239 --- git provider breaks if repository path has spaces
* http://tickets.opscode.com/browse/CHEF-4259 --- Unpacking recipes fails on SmartOS
* http://tickets.opscode.com/browse/CHEF-4272 --- "knife list" shows files that can't be uploaded
* http://tickets.opscode.com/browse/CHEF-4274 --- chef-client never runs again after an http timeout to the chef server.
* http://tickets.opscode.com/browse/CHEF-4275 --- Rubygems 2.0 heuristic is incorrect on some environments upgraded from rubygems 1.8


What's Improved
=====================================================
The following improvements were made:

* http://tickets.opscode.com/browse/CHEF-1367 --- Make remote_file avoid downloading a file if it hasn't changed
* http://tickets.opscode.com/browse/CHEF-2506 --- remote_file should respect ETags
* http://tickets.opscode.com/browse/CHEF-3348 --- 11: Better CHANGELOG formatting
* http://tickets.opscode.com/browse/CHEF-3364 --- Fix up Smartos Package provider
* http://tickets.opscode.com/browse/CHEF-3615 --- Encrypted data bag items should use authenticated encryption.
* http://tickets.opscode.com/browse/CHEF-3664 --- The 'map' variable is defined and never used in the set_or_return method of lib/chef/mixim/params_validate.rb
* http://tickets.opscode.com/browse/CHEF-3695 --- File provider follows symlinks; Template provider does not (security implications and inconsistency)
* http://tickets.opscode.com/browse/CHEF-3735 --- typos in resource names should show the typo in the error message/exception
* http://tickets.opscode.com/browse/CHEF-3749 --- Use HTTPS to download the Omnibus installer
* http://tickets.opscode.com/browse/CHEF-3819 --- Execute with cwd attribute should check existence of sentiel file according to cwd value
* http://tickets.opscode.com/browse/CHEF-3942 --- The chef-repo should gitignore .chef directory by default
* http://tickets.opscode.com/browse/CHEF-3967 --- Use HTTPS when connecting to RubyGems.org
* http://tickets.opscode.com/browse/CHEF-3987 --- Resource collection has duplicate code in "push" and "<<"
* http://tickets.opscode.com/browse/CHEF-4011 --- default location of "encrypted_data_bag_secret" should be set in Chef::Config
* http://tickets.opscode.com/browse/CHEF-4053 --- Add powershell providers in Core Chef
* http://tickets.opscode.com/browse/CHEF-4054 --- Add windows batch provider to core Chef
* http://tickets.opscode.com/browse/CHEF-4055 --- Add Win8/2012 to Chef Windows Helper
* http://tickets.opscode.com/browse/CHEF-4070 --- Support DataBag.list on chef-solo
* http://tickets.opscode.com/browse/CHEF-4081 --- let knife show/search return more than one attribute using -a
* http://tickets.opscode.com/browse/CHEF-4088 --- sorting the knife commands is done, but would be cool if you also sort the sub commands...
* http://tickets.opscode.com/browse/CHEF-4090 --- refactor zypper package provider to make command output visible
* http://tickets.opscode.com/browse/CHEF-4106 --- Remove obsolete default configuration
* http://tickets.opscode.com/browse/CHEF-4130 --- knife * edit presents a .js file not a .json file
* http://tickets.opscode.com/browse/CHEF-4146 --- Update Reporting Client Protocol
* http://tickets.opscode.com/browse/CHEF-4161 --- remove newlines from knife search -i output
* http://tickets.opscode.com/browse/CHEF-4220 --- Define helper functions on template resource
* http://tickets.opscode.com/browse/CHEF-4225 --- Bump windows ruby version to p429 in omnibus-chef

Known Issues
=====================================================
The following issues remain in |chef 11-6|. Please review this list before filing new bugs about these issues:

* bug# --- xxxxx.
* bug# --- xxxxx.
* bug# --- xxxxx.
* bug# --- xxxxx.
* bug# --- xxxxx.
* bug# --- xxxxx.


Frequently Asked Questions
-----------------------------------------------------

**xxxxx?**

xxxxx.

**xxxxx?**

xxxxx.

**xxxxx?**

xxxxx.


