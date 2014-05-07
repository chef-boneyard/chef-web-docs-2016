=====================================================
Install Chef 11.x on a Workstation
=====================================================

.. include:: ../../includes_chef/includes_chef.rst

The following sections describe how to install the |chef client| on a workstation.

The steps for installing the |chef client| on a machine that runs |linux|, |unix|, or |mac os x| are identical:

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
The |chef client| communicates with a |chef server| as part of the configuration process. Sign up for hosted |chef server oec|, install |chef server oec|, or install the open source |chef server|.

Review prerequisites
=====================================================
Ensure that the workstation meets all of the software prerequisites and that it has access to a |chef server| and to a machine that can host a node.

The following items are prerequisites for installing the |chef client| on a workstation:

* A computer running |unix|, |linux|, |mac os x| or |windows|; (for installing the |chef client| on |windows|, see :doc:`install_windows`)
* |apple xcode| is installed on machines running |mac os x|; this application can be downloaded from |apple| for free
* A |github| account; the |chef repo| must be downloaded and/or cloned from |github|
* Access to a |chef server|: a hosted |chef server oec| account, a local install of |chef server oec|, or the open source |chef server|
* Access to a machine (physical or virtual) that can be used as the first node; the |fqdn| or IP address for a machine is required by the |subcommand knife bootstrap| command during a bootstrap operation

Select the |omnibus installer|
=====================================================
.. include:: ../../step_install/step_install_workstation_select_omnibus_installer.rst

Run the |omnibus installer|
=====================================================
.. include:: ../../step_install/step_install_workstation_omnibus.rst

Install |git|
=====================================================
.. include:: ../../step_install/step_install_workstation_git_install.rst

Set up the |chef repo|
=====================================================
There are two ways to create the |chef repo|:

* Use the starter kit built into the |chef server oec| web user interface
* Manually

Starter Kit
-----------------------------------------------------
If you have access to |chef server oec| (hosted or on premises), you can download the starter kit. The starter kit will create the necessary configuration files---the .chef directory, |knife rb|, the ORGANIZATION-validator.pem, and USER.pem files) with the correct information that is required to interact with the |chef server|. Simply download the starter kit and then move it to the desired location on your workstation.

.. include:: ../../step_manage_webui/step_manage_webui_admin_organization_get_starter_kit.rst

Manually
-----------------------------------------------------
Use the following steps to manually set up the |chef repo|:

Clone the |chef repo|
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_install/step_install_workstation_git_clone_chef_repo.rst

Create .chef Directory
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_install/step_install_workstation_chef_directory_create.rst

Get Config Files
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The |chef server| provides three files that must be in the |chef repo| and are required when connecting to the |chef server|.

**Enterprise Chef**

.. include:: ../../step_install/step_install_workstation_validation_files_download.rst

**Open Source Chef Server**

.. include:: ../../step_install/step_install_workstation_validation_files_chef_open_server.rst

Move Config Files
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_install/step_install_workstation_chef_directory_move_files.rst

Add |ruby| to the $PATH environment variable
=====================================================
.. include:: ../../step_install/step_install_workstation_path_omnibus_ruby.rst

Verify the |chef client| install
=====================================================
.. include:: ../../step_install/step_install_workstation_verify.rst

