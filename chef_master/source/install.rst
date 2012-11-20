=====================================================
Install Chef on a Workstation
=====================================================

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


.. include:: ../../includes_install/includes_install_omnibus_workstation.rst

Follow the steps below to use the |omnibus installer| to set up a workstation on a machine running |unix|, |linux|, |mac os x|, or |windows|. When finished, a workstation will be configured to connect to a |chef server| and (optionally) can be configured to act as a |chef client|, used to set up a |chef client| on an external machine (or virtual machine) using a ``knife bootstrap`` operation, and used to manage cookbooks, organization settings (like roles, environments, and data bags).

.. note:: |note install trial for hosted|

The steps for installing |chef| on a machine that runs |linux|, |unix|, or |mac os x| are identical. See the following sections for more information about each step. 

.. list-table::
   :widths: 50 550
   :header-rows: 1

   * - Steps
     - Description
   * - 1.
     - :doc:`install_system_requirements`
   * - 2.
     - :doc:`install_step_files_download`
   * - 3.
     - :doc:`install_step_installer_select`
   * - 4.
     - :doc:`install_step_installer_run`
   * - 5.
     - :doc:`install_step_install_git`
   * - 6.
     - :doc:`install_step_directory_clone`
   * - 7.
     - :doc:`install_step_directory_create`
   * - 8.
     - :doc:`install_step_files_move`
   * - 9.
     - :doc:`install_step_verify`
   * - 10.
     - :doc:`install_step_verify`

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




