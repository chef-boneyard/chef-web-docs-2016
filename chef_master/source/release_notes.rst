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
* |ssh| operations using the |resource cookbook_file| or |resource template| may error out when using the default permissions. Previously, |chef| would create files with ``0600`` permissions. With |chef| 11.6, |chef| may create files with ``0644``.
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
     - |helpers| Default value: ``[]`.


Helper Methods
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_template_helper.rst

**Inline Helper Methods**

.. include:: ../../step_resource/step_resource_template_inline_method.rst

**Inline Helper Modules**

.. include:: ../../step_resource/step_resource_template_inline_module.rst

**Cookbook Library Modules**

.. include:: ../../step_resource/step_resource_template_library_module.rst


Configuration Settings
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

* xxxxx
* xxxxx
* xxxxx
* xxxxx

xxxxx
+++++++++++++++++++++++++++++++++++++++++++++++++++++
xxxxx

xxxxx
+++++++++++++++++++++++++++++++++++++++++++++++++++++
xxxxx


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


