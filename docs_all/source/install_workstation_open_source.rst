=========================================================
Install Chef on a Workstation for Open Source Chef Server
=========================================================
 
.. include:: ../../swaps/swap_desc_a.txt
.. include:: ../../swaps/swap_desc_b.txt
.. include:: ../../swaps/swap_desc_c.txt
.. include:: ../../swaps/swap_desc_d.txt
.. include:: ../../swaps/swap_desc_e.txt
.. include:: ../../swaps/swap_desc_f.txt
.. include:: ../../swaps/swap_desc_g.txt
.. include:: ../../swaps/swap_desc_h.txt
.. include:: ../../swaps/swap_desc_i.txt
.. include:: ../../swaps/swap_desc_j.txt
.. include:: ../../swaps/swap_desc_k.txt
.. include:: ../../swaps/swap_desc_l.txt
.. include:: ../../swaps/swap_desc_m.txt
.. include:: ../../swaps/swap_desc_n.txt
.. include:: ../../swaps/swap_desc_o.txt
.. include:: ../../swaps/swap_desc_p.txt
.. include:: ../../swaps/swap_desc_q.txt
.. include:: ../../swaps/swap_desc_r.txt
.. include:: ../../swaps/swap_desc_s.txt
.. include:: ../../swaps/swap_desc_t.txt
.. include:: ../../swaps/swap_desc_u.txt
.. include:: ../../swaps/swap_desc_v.txt
.. include:: ../../swaps/swap_desc_w.txt
.. include:: ../../swaps/swap_desc_x.txt
.. include:: ../../swaps/swap_desc_y.txt
.. include:: ../../swaps/swap_desc_z.txt
.. include:: ../../swaps/swap_http.txt
.. include:: ../../swaps/swap_names.txt
.. include:: ../../swaps/swap_notes.txt


.. include:: ../../includes_chef/includes_chef.rst

.. include:: ../../includes_workstation/includes_workstation.rst

.. include:: ../../includes_install/includes_install_omnibus_workstation.rst

Follow the steps below to use the |omnibus installer| to set up a workstation on a machine running |unix|, |linux|, |mac os x|, or |windows|. When finished, a workstation will be configured to connect to a |chef server| and (optionally) can be configured to act as a |chef client|, used to set up a |chef client| on an external machine (or virtual machine) using a ``knife bootstrap`` operation, and used to manage cookbooks, organization settings (like roles, environments, and data bags).

.. note:: If you want to install |chef| and try it out without having to install |chef server| on a physical machine, sign up for |chef hosted|: http://www.opscode.com/hosted-chef/. The first five nodes are free of charge. Once you have signed up you can continue with the installation process. You can decide to use another type of |chef server| later if you want to.

System Requirements
=====================================================
.. include:: ../../includes_chef/includes_system_requirements_chef_omnibus.rst

In addition, a |chef| workstation must be able to connect to a |chef server| (|chef hosted|, |chef private|, or |chef open server|), access to three generated files (two validation files that contain private keys and one configuration file), plus the ability to clone the |chef repo| repository from |github|.

For Machines Running |linux|, |unix|, or |mac os x|
=====================================================
The steps for installing |chef| on a machine that runs |linux|, |unix|, or |mac os x| are identical:

1. Download .pem files and |knife rb|
2. Select the |omnibus installer|
3. Run the |omnibus installer|
4. Install |git|
5. Clone the |chef| repository
6. Create the .chef directory
7. Move files to the .chef directory
8. Verify the |chef| install

See the following sections for more information about each step. 

Download .pem files and |knife rb|
----------------------------------------
.. include:: ../../step_install/step_install_workstation_validation_files_chef_open_server.rst

Select the |omnibus installer|
----------------------------------------
.. include:: ../../step_install/step_install_workstation_select_omnibus_installer.rst

Run the |omnibus installer|
----------------------------------------
.. include:: ../../step_install/step_install_workstation_omnibus.rst

Install |git|
----------------------------------------
.. include:: ../../step_install/step_install_workstation_git_install.rst

Clone the |chef| repository
----------------------------------------
.. include:: ../../step_install/step_install_workstation_git_clone_chef_repo.rst

Create the .chef directory
----------------------------------------
.. include:: ../../step_install/step_install_workstation_chef_directory_create.rst

Move files to the .chef directory
----------------------------------------
.. include:: ../../step_install/step_install_workstation_chef_directory_move_files.rst

Verify the |chef| install
----------------------------------------
.. include:: ../../step_install/step_install_workstation_verify.rst

Bootstrapping Your First Node
=====================================================

.. include:: ../../step_install/step_install_workstation_bootstrap_default.rst
