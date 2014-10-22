=====================================================
Release Notes: |chef client| 12.0
=====================================================

.. include:: ../../includes_chef/includes_chef.rst

What's New
=====================================================
The following items are new for |chef client| 12.0 and/or are changes from previous versions. The short version:

* **The chef-client supports the AIX platform** The |chef client| may now be used to configure nodes that are running on the |ibm aix| platform.
* **New bff_package resource** Use the |resource package_bff| resource to install packages on the |ibm aix| platform.
* **New homebrew_package resource** Use the |resource package_homebrew| resource to install packages on the |mac os x| platform. The |resource package_homebrew| resource replaces the |resource package_macports| resource as the default package installer.
* **New reboot resource** Use the |resource reboot| resource to reboot a node during or at the end of a |chef client| run.
* **New windows_service resource** Use the |resource service_windows| resource to manage services on the |windows| platform.
* **New --bootstra-template option** Use the ``--bootstrap-template`` option to install the |chef client| with a bootstrap template. Specify the name of a template such as ``chef-full`` or specify the path to a custom bootstrap template. This option deprecates the ``--distro`` and ``--template-file`` options.
* **xxxxx** xxxxx

bff_package
-----------------------------------------------------
.. include:: ../../release_chef_12-0/includes_resource_package_bff.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../release_chef_12-0/includes_resource_package_bff_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../release_chef_12-0/includes_resource_package_bff_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../release_chef_12-0/includes_resource_package_bff_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.


homebrew_package
-----------------------------------------------------
.. include:: ../../release_chef_12-0/includes_resource_package_homebrew.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../release_chef_12-0/includes_resource_package_homebrew_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../release_chef_12-0/includes_resource_package_homebrew_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../release_chef_12-0/includes_resource_package_homebrew_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++

**Install a package**

.. include:: ../../release_chef_12-0/step_resource_homebrew_package_install.rst

**Specify the Homebrew user with a UUID**

.. include:: ../../release_chef_12-0/step_resource_homebrew_package_homebrew_user_as_uuid.rst

**Specify the Homebrew user with a string**

.. include:: ../../release_chef_12-0/step_resource_homebrew_package_homebrew_user_as_string.rst


reboot
-----------------------------------------------------
.. include:: ../../release_chef_12-0/includes_resource_service_reboot.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../release_chef_12-0/includes_resource_service_reboot_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../release_chef_12-0/includes_resource_service_reboot_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../release_chef_12-0/includes_resource_service_reboot_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++

**Reboot a node immediately**

.. .. include:: ../../release_chef_12-0/step_resource_service_reboot_immediately.rst

**Reboot a node at the end of a |chef client| run**

.. .. include:: ../../release_chef_12-0/step_resource_service_reboot_request.rst

**Cancel a reboot**

.. .. include:: ../../release_chef_12-0/step_resource_service_reboot_cancel.rst


windows_service
-----------------------------------------------------
.. include:: ../../release_chef_12-0/includes_resource_service_windows.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../release_chef_12-0/includes_resource_service_windows_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../release_chef_12-0/includes_resource_service_windows_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../release_chef_12-0/includes_resource_service_windows_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++

**Start a service manually**

.. include:: ../../release_chef_12-0/step_resource_service_windows_manual_start.rst


``knife bootstrap``
-----------------------------------------------------
A new option is added to the |subcommand knife bootstrap| subcommand:

``-t TEMPLATE``, ``--bootstrap-template TEMPLATE``
   |template bootstrap| Default value: ``chef-full``, which installs the |chef client| using the |omnibus installer| on all supported platforms.

.. note:: The ``--distro`` and ``--template-file`` options are deprecated.

Changelog
=====================================================
https://github.com/opscode/chef/blob/11-stable/CHANGELOG.md

.. What's Fixed
.. =====================================================
.. The following bugs were fixed:
.. 
.. * `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx
.. * `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx
.. 
.. What's Improved
.. =====================================================
.. The following improvements were made:
.. 
.. * `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx
.. * `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx
.. 
.. New Features
.. =====================================================
.. The following features were added:
.. 
.. * `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx
.. * `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx