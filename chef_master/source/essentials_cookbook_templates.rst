=====================================================
Cookbook Templates
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

.. include:: ../../includes_cookbooks/includes_cookbooks_template.rst

.. note:: |note cookbook template erubis|

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Method
     - Description
   * - :doc:`essentials_cookbook_templates_requirements`
     - To use a template, it must be added to a recipe and an |erb| template must be added to a cookbook.
   * - :doc:`essentials_cookbook_templates_variables`
     - A |chef| template is an |erb| template. An |erb| template allows Ruby code to be embedded inside a text file within specially formatted tags.
   * - :doc:`essentials_cookbook_templates_location_specificity`
     - |chef| will determine the correct template based on the rules that are provided to it.
   * - :doc:`essentials_cookbook_templates_host_notation`
     - The naming of folders within cookbook directories must literally match the host notation used for template specificity matching.
   * - :doc:`essentials_cookbook_templates_transfer_frequency`
     - |chef| caches a template when it is first requested. On each subsequent request for that template, |chef| compares that request to the template located on the |chef server|. If the templates are the same, no transfer occurs.

.. toctree::
   :hidden:

   essentials_cookbook_templates_host_notation
   essentials_cookbook_templates_location_specificity
   essentials_cookbook_templates_requirements
   essentials_cookbook_templates_transfer_frequency
   essentials_cookbook_templates_variables