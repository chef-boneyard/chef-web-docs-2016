=====================================================
Install Chef 11.x on a Workstation
=====================================================

.. include:: ../../includes_chef/includes_chef.rst

.. include:: ../../includes_install/includes_install_11_workstation.rst

The following sections describe how to install the |chef client| on a workstation. The steps for installing the |chef client| on a machine that runs |linux|, |unix|, or |mac os x| are identical:

#. Identify the |chef server| type: |chef server osc|, hosted |chef server oec|, or |chef server oec|
#. Review the prerequisites
#. Select the |omnibus installer|
#. Run the |omnibus installer|
#. Install |git|
#. Set up the |chef repo|
#. Create the |chef repo hidden| directory
#. Get the .pem files and |knife rb| files
#. Move files to the |chef repo hidden| directory
#. Add omnibus |ruby| to the $PATH environment variable
#. Verify the |chef client| install

See the following sections for more information about each step.

Identify the |chef server| type
=====================================================
.. include:: ../../includes_install/includes_install_11_workstation_choose_server.rst

Review prerequisites
=====================================================
.. include:: ../../includes_install/includes_install_11_workstation_prerequisites.rst

Select the |omnibus installer|
=====================================================
.. include:: ../../includes_install/includes_install_11_workstation_select_omnibus_installer.rst

Run the |omnibus installer|
=====================================================
.. include:: ../../includes_install/includes_install_11_workstation_omnibus.rst

Install |git|
=====================================================
.. include:: ../../includes_install/includes_install_11_workstation_git_install.rst

Set up the |chef repo|
=====================================================
There are two ways to create the |chef repo|:

* Use the starter kit built into the |chef server oec| web user interface
* Manually

Starter Kit
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_11_workstation_starter_kit.rst

Manually
-----------------------------------------------------
Use the following steps to manually set up the |chef repo|:

Clone the |chef repo|
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_install/includes_install_11_workstation_git_clone_chef_repo.rst

Create .chef Directory
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_install/includes_install_11_workstation_chef_directory_create.rst

Get Config Files
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The |chef server| provides three files that must be in the |chef repo| and are required when connecting to the |chef server|.

**Enterprise Chef**

.. include:: ../../includes_install/includes_install_11_workstation_validation_files_download.rst

**Open Source Chef Server**

.. include:: ../../includes_install/includes_install_11_workstation_validation_files_chef_open_server.rst

Move Config Files
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_install/includes_install_11_workstation_chef_directory_move_files.rst

Add |ruby| to the $PATH environment variable
=====================================================
.. include:: ../../includes_install/includes_install_11_workstation_path_omnibus_ruby.rst

Verify the |chef client| install
=====================================================
.. include:: ../../includes_install/includes_install_11_workstation_verify.rst
