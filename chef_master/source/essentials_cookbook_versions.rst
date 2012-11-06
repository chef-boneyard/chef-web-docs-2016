=====================================================
Versions
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

.. include:: ../../includes_cookbooks/includes_cookbooks_version.rst

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Method
     - Description
   * - :doc:`essentials_cookbook_versions_syntax`
     - A cookbook version always takes the form x.y.z, where x, y, and z are decimal numbers that are used to represent major (x), minor (y), and patch (z) versions.
   * - :doc:`essentials_cookbook_versions_operators`
     - All of the most common operators can be used when referring to cookbook versions.
   * - :doc:`essentials_cookbook_versions_constraints`
     - A version constraint is a string that combines the cookbook version syntax with an operator.
   * - :doc:`essentials_cookbook_versions_metadata`
     - Every cookbook requires a small amount of metadata. This metadata provides hints to the Chef server so that cookbooks are deployed to each node correctly.
   * - :doc:`essentials_cookbook_versions_environments`
     - An environment can use version constraints to specify a list of allowed cookbook versions by specifying the cookbook’s name along with the version constraint.
   * - :doc:`essentials_cookbook_versions_run_lists`
     - A version constraint can be specified for recipe items that are part of a run-list.
   * - :doc:`essentials_cookbook_versions_freeze`
     - A cookbook version can be frozen, which will prevent updates from being made to that version of a cookbook.
   * - :doc:`essentials_cookbook_versions_version_control`
     - Cookbooks should be stored in some type of version source control.

.. toctree::
   :hidden:

   essentials_cookbook_versions_syntax
   essentials_cookbook_versions_operators
   essentials_cookbook_versions_constraints
   essentials_cookbook_versions_metadata
   essentials_cookbook_versions_environments
   essentials_cookbook_versions_run_lists
   essentials_cookbook_versions_freeze
   essentials_cookbook_versions_version_control
