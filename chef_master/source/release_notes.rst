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

     In |chef| 11.6, |chef| may create files with ``0644`` permissions when the file mode is not specified. This may create situations where the correct permissions for an |ssh| configuration file are not applied, which may cause a subsequent |ssh| operation to fail. Use the ``mode`` attribute to ensure the correct permissions are applied to a file. For example::

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
* The |subcommand knife_download| subcommand can access all objects on the |chef server| and can now be used to pull a full-fidelity backup of the entire |chef| organization




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
The following defects were fixed:

* bug# --- xxxxx.
* bug# --- xxxxx.
* bug# --- xxxxx.
* bug# --- xxxxx.
* bug# --- xxxxx.
* bug# --- xxxxx.


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


