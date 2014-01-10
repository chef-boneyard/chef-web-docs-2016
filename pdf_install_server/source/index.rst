=====================================================
Install Enterprise Chef
=====================================================

.. image:: ../../images/chef_run_300dpi.png

Install the Server
=====================================================
.. include:: ../../includes_chef_server/includes_chef_server.rst

The steps below describe the process for installing |chef server 11|.

Steps
-----------------------------------------------------
.. include:: ../../step_install/step_install_server.rst

About FQDNs and Hostnames
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_server_hostname.rst

**To verify if a hostname is a FQDN**

.. include:: ../../step_install/step_install_hostname_is_fqdn.rst

**To verify is a hostname is resolvable**

.. include:: ../../step_install/step_install_hostname_is_resolvable.rst

**To change a hostname**

.. include:: ../../step_install/step_install_hostname_edit.rst

**To add a hostname to /etc/hosts**

.. include:: ../../step_install/step_install_hostname_add_to_etc_hosts.rst

Install a Workstation
=====================================================
.. include:: ../../includes_chef/includes_chef.rst

The following items are prerequisites for installing the |chef client| on a workstation:

* A computer running |unix|, |linux|, |mac os x| or |windows|
* |apple xcode| is installed on machines running |mac os x|; this application can be downloaded from |apple| for free
* A |github| account; the |chef repo| must be downloaded and/or cloned from |github|
* Access to a |chef server|: a hosted |chef server oec| account, a local install of |chef server oec|, or the open source |chef server|
* Access to a machine (physical or virtual) that can be used as the first node; the |fqdn| or IP address for a machine is required by the |subcommand knife bootstrap| command during a bootstrap operation

The following steps describe how to install the |chef client| on a workstation.

The steps for installing the |chef client| on a machine that runs |linux|, |unix|, or |mac os x| are identical:

#. Identify the |chef server| type: |chef server osc|, hosted |chef server oec|, or |chef server oec|
#. Review the prerequisites
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

Identify the |chef server| type
-----------------------------------------------------
The |chef client| communicates with a |chef server| as part of the configuration process. Sign up for hosted |chef server oec|, install |chef server oec|, or install the open source |chef server|.

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

**Enterprise Chef**

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

Install Add-ons
=====================================================
xxxxx

Install Push Jobs
=====================================================
.. include:: ../../includes_install/includes_install_push_jobs_overview.rst

|push jobs| Server
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_push_jobs_server.rst

|push jobs| Client
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_push_jobs_client.rst

|push jobs| Workstation
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_push_jobs_workstation.rst

push-jobs Cookbook
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_install/includes_install_push_jobs_cookbook.rst

Install Manager
=====================================================
.. include:: ../../includes_manager/includes_manager.rst

Requirements
-----------------------------------------------------
.. include:: ../../includes_system_requirements/includes_system_requirements_manager.rst

|chef manager| Server
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_manager_server.rst

Install Reporting
=====================================================
.. include:: ../../includes_reporting/includes_reporting.rst

Requirements
-----------------------------------------------------
.. include:: ../../includes_system_requirements/includes_system_requirements_reporting.rst

|reporting| Server
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_reporting_server.rst

|reporting| Client
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_reporting_client.rst

|reporting| Workstation
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_reporting_workstation.rst