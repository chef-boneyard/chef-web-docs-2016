=====================================================
Install Chef 11.x on a Workstation
=====================================================

.. warning:: |note doc_version_11-4|

.. include:: ../../includes_chef/includes_chef.rst

Prerequisites
=====================================================
The following items are prerequisites for installing the |chef client| on a workstation:

* A computer running |unix|, |linux|, or |mac os x|; |windows| machines are supported, but they are not described as part of the current install documentation
* |apple xcode| is installed on machines running |mac os x|; this application can be downloaded from |apple| for free
* A |github| account; the |chef repo| must be downloaded and/or cloned from |github|
* Access to a |chef server|, typically a |chef hosted| account or the open source |chef server|; the open source |chef server| may be installed on a virtual machine for demo purposes
* Access to a machine (physical or virtual) that can be used as the first node; the |fqdn| or IP address for a machine is required by the |subcommand knife bootstrap| command during a bootstrap operation

Steps
=====================================================
The following steps describe how to install the |chef client| on a workstation.

The steps for installing the |chef client| on a machine that runs |linux|, |unix|, or |mac os x| are identical:

#. Identify the |chef server|
#. Review the prequisites
#. Select the |omnibus installer|
#. Run the |omnibus installer|
#. Install |git|
#. Clone the |chef repo|
#. Create the |chef repo hidden| directory
#. Get the .pem files and |knife rb| files
#. Move files to the |chef repo hidden| directory
#. Add omnibus |ruby| to the $PATH environment variable
#. Verify the |chef client| install

See the following sections for more information about each step. 

Identify the |chef server|
-----------------------------------------------------
Sign up for |chef hosted| or install the open source |chef server|.

Review prerequisites
-----------------------------------------------------
Ensure that the workstation meets all of the software prerequisites and that it has access to a |chef server| and to a machine that can host a node.

Select the |omnibus installer|
-----------------------------------------------------
.. include:: ../../step_install/step_install_workstation_select_omnibus_installer.rst

Run the |omnibus installer|
-----------------------------------------------------
.. include:: ../../step_install/step_install_workstation_omnibus.rst

Install |git|
-----------------------------------------------------
.. include:: ../../step_install/step_install_workstation_git_install.rst

Clone the |chef repo|
-----------------------------------------------------
.. include:: ../../step_install/step_install_workstation_git_clone_chef_repo.rst

Create the |chef repo hidden| directory
-----------------------------------------------------
.. include:: ../../step_install/step_install_workstation_chef_directory_create.rst

Get the .pem files and |knife rb| files
-----------------------------------------------------
The |chef server| provides three files that must be in the |chef repo| and are required when connecting to the |chef server|.

**Hosted Chef and Private Chef**

.. include:: ../../step_install/step_install_workstation_validation_files_download.rst

**Open Source Chef Server**

.. include:: ../../step_install/step_install_workstation_validation_files_chef_open_server.rst

Move files to |chef repo hidden| directory
-----------------------------------------------------
.. include:: ../../step_install/step_install_workstation_chef_directory_move_files.rst

Add |ruby| to the $PATH environment variable
-----------------------------------------------------
.. include:: ../../step_install/step_install_workstation_path_omnibus_ruby.rst

Verify the |chef client| install
-----------------------------------------------------
.. include:: ../../step_install/step_install_workstation_verify.rst

