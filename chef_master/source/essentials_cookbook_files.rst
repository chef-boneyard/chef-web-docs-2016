=====================================================
Cookbook Files
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

.. include:: ../../includes_cookbooks/includes_cookbooks_file_distribution.rst

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Method
     - Description
   * - :doc:`essentials_cookbook_files_syntax`
     - The |resource cookbook file| resource defines a file distribution.
   * - :doc:`essentials_cookbook_files_specificity`
     - A cookbook can be designed to support distributing files across platforms in a way that ensure the right file ends up on the right system.
   * - :doc:`essentials_cookbook_files_host_notation`
     - The naming of folders within cookbook directories must literally match the host notation used for file specificity matching.
   * - :doc:`essentials_cookbook_files_transfers`
     - When a |resource cookbook file| resource is run, the |chef client| will calculate the checksum of each local file and then compare this against the checksum for that same file as it currently exists in the cookbook on the |chef server|.


.. toctree::
   :hidden:

   essentials_cookbook_files_host_notation
   essentials_cookbook_files_specificity
   essentials_cookbook_files_syntax
   essentials_cookbook_files_transfers