=====================================================
windows Lightweight Resources
=====================================================

|cookbook name windows|

The |cookbook windows| cookbook contains the following resources: ``windows_auto_run``, ``windows_batch``, ``windows_feature``, ``windows_package``, ``windows_path``, ``windows_reboot``, ``windows_registry``, ``windows_shortcut``, and ``windows_zipfile``.

.. warning:: The |resource batch| resource was added to |chef 11-6| as a core resource. In general, it is recommended to use the |resource batch| resource instead of the ``windows_batch`` resource included in the |cookbook windows| cookbook whenever possible, including updating any existing recipes that may be using the older lightweight resource in favor of the newer resource.

.. note:: These resources are part of the |cookbook windows| cookbook: https://github.com/opscode-cookbooks/windows.

windows_auto_run
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_windows_auto_run.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_windows_auto_run_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_windows_auto_run_attributes.rst

Examples
-----------------------------------------------------
The following example shows how to use the ``windows_auto_run`` resource:

**Run a program at login**

.. include:: ../../step_lwrp/step_lwrp_windows_auto_run_at_login.rst


windows_batch
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_windows_batch.rst

.. warning:: This resource has been added to the |chef client|, starting with |chef 11|. See: `batch <http://docs.opscode.com/resource_batch.html>`_ for details about the resource.

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_windows_batch_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_windows_batch_attributes.rst

Examples
-----------------------------------------------------
The following example shows how to use the ``windows_batch`` resource:

**Run a batch file**

.. include:: ../../step_lwrp/step_lwrp_windows_batch_run.rst


windows_feature
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_windows_feature.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_windows_feature_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_windows_feature_attributes.rst

Providers
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_windows_feature_providers.rst

Examples
-----------------------------------------------------
The following examples show how to use the ``windows_feature`` resource:

**Enable a feature**

.. include:: ../../step_lwrp/step_lwrp_windows_feature_enable.rst

**Disable a feature**

.. include:: ../../step_lwrp/step_lwrp_windows_feature_disable.rst


windows_package
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_windows_package.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_windows_package_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_windows_package_attributes.rst

Examples
-----------------------------------------------------
The following examples show how to use the ``windows_package`` resource:

**Install PuTTY**

.. include:: ../../step_lwrp/step_lwrp_windows_package_install_putty.rst

**Install 7-Zip**

.. include:: ../../step_lwrp/step_lwrp_windows_package_install_7zip.rst

**Remove 7-Zip**

.. include:: ../../step_lwrp/step_lwrp_windows_package_remove_7zip.rst

**Install Notepad++**

.. include:: ../../step_lwrp/step_lwrp_windows_package_install_notepad_plusplus.rst

**Install Firefox silently**

.. include:: ../../step_lwrp/step_lwrp_windows_package_install_firefox.rst

**Install the VLC media player**

.. include:: ../../step_lwrp/step_lwrp_windows_package_install_vlc.rst

**Install Google Chrome**

.. include:: ../../step_lwrp/step_lwrp_windows_package_install_google_chrome.rst

**Remove Google Chrome**

.. include:: ../../step_lwrp/step_lwrp_windows_package_remove_google_chrome.rst


windows_path
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_windows_path.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_windows_path_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_windows_path_attributes.rst

Examples
-----------------------------------------------------
The following examples show how to use the ``windows_path`` resource:

**Add an item to the system path**

.. include:: ../../step_lwrp/step_lwrp_windows_path_add.rst

**Remove an item from the system path**

.. include:: ../../step_lwrp/step_lwrp_windows_path_remove.rst


windows_reboot
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_windows_reboot.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_windows_reboot_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_windows_reboot_attributes.rst

Examples
-----------------------------------------------------
The following examples show how to use the ``windows_reboot`` resource:

**Schedule a reboot**

.. include:: ../../step_lwrp/step_lwrp_windows_reboot_schedule.rst

**Cancel a reboot**

.. include:: ../../step_lwrp/step_lwrp_windows_reboot_cancel.rst


windows_registry
=====================================================
.. warning:: This resource has been added to the |chef client|, starting with |chef 11|. See: `registry_key <http://docs.opscode.com/resource_registry_key.html>`_ for details about the resource. Also, six helper methods for registry keys have been added to the Recipe DSL: `registry_data_exists? <http://docs.opscode.com/dsl_recipe_method_registry_data_exists.html>`_, `registry_get_subkeys <http://docs.opscode.com/dsl_recipe_method_registry_get_subkeys.html>`_, `registry_get_values <http://docs.opscode.com/dsl_recipe_method_registry_get_values.html>`_, `registry_has_subkeys? <http://docs.opscode.com/dsl_recipe_method_registry_has_subkeys.html>`_, `registry_key_exists? <http://docs.opscode.com/dsl_recipe_method_registry_key_exists.html>`_, and `registry_value_exists? <http://docs.opscode.com/dsl_recipe_method_registry_value_exists.html>`_.


windows_shortcut
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_windows_shortcut.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_windows_shortcut_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_windows_shortcut_attributes.rst

Examples
-----------------------------------------------------
None.


windows_zipfile
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_windows_zipfile.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_windows_zipfile_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_windows_zipfile_attributes.rst

Examples
-----------------------------------------------------
The following examples show how to use the ``windows_zipfile`` resource:

**Unzip a remote file**

.. include:: ../../step_lwrp/step_lwrp_windows_zipfile_unzip_remote.rst

**Unzip a local file**

.. include:: ../../step_lwrp/step_lwrp_windows_zipfile_unzip_local.rst