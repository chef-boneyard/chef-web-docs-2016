=====================================================
Install Chef on a Workstation
=====================================================

.. include:: ../../includes_install/includes_install_omnibus_workstation.rst

Follow the steps below to use the |omnibus installer| to set up a workstation on a machine running |unix|, |linux|, |mac os x|, or |windows|. When finished, a workstation will be configured to connect to a |chef server| and (optionally) can be configured to act as a |chef client|, used to set up a |chef client| on an external machine (or virtual machine) using a ``knife bootstrap`` operation, and used to manage cookbooks, organization settings (like roles, environments, and data bags).

.. note:: |note install trial for hosted| 

The steps for installing |chef| on a machine that runs |linux|, |unix|, or |mac os x| are identical. See the following sections for more information about each step.

#. :doc:`install_system_requirements`
#. :doc:`install_step_files_download`
#. :doc:`install_step_installer_select`
#. :doc:`install_step_installer_run`
#. :doc:`install_step_install_git`
#. :doc:`install_step_directory_clone`
#. :doc:`install_step_directory_create`
#. :doc:`install_step_files_move`
#. :doc:`install_step_verify`
#. :doc:`install_step_bootstrap`

.. note:: If you would like all of these steps on a single page, see: http://docs.opscode.com/chef/install_workstation.html.

.. toctree::
   :hidden:

   install_system_requirements
   install_step_files_download
   install_step_installer_select
   install_step_installer_run
   install_step_install_git
   install_step_directory_clone
   install_step_directory_create
   install_step_files_move
   install_step_verify
   install_step_bootstrap




