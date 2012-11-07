=====================================================
Attribute Files
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

.. include:: ../../includes_cookbooks/includes_cookbooks_attribute.rst

.. include:: ../../includes_cookbooks/includes_cookbooks_attribute_file.rst

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Method
     - Description
   * - :doc:`essentials_cookbook_attribute_files_file_methods`
     - Methods are available to set attribute precedence in a cookbook.
   * - :doc:`essentials_cookbook_attribute_files_ordering`
     - When |chef| loads cookbook attribute files, it does so in alphabetical order for all the cookbooks.
   * - :doc:`essentials_cookbook_attribute_files_accessor_methods`
     - Attribute accessor methods are automatically created and the method invocation can be used interchangeably with the keys.
   * - :doc:`essentials_cookbook_attribute_files_reload`
     - Attributes sometimes depend on actions taken from within recipes, so it may be necessary to reload a given attribute from within a recipe.

.. include:: ../../includes_cookbooks/includes_cookbooks_attribute_when_to_use.rst

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Method
     - Description
   * - :doc:`essentials_cookbook_attribute_files_attribute_types`
     - There are four types of attributes: ``default``, ``normal``, ``override``, and ``automatic``.
   * - :doc:`essentials_cookbook_attribute_files_attribute_persistence`
     - During a |chef| run, saved attributes are retrieved from the |chef server| and are merged with the attributes on the local system.
   * - :doc:`essentials_cookbook_attribute_files_attribute_precedence`
     - At the beginning of a |chef| run, all default, override, and automatic attributes are reset.
   * - :doc:`essentials_cookbook_attribute_files_attribute_automatic`
     - An automatic attribute is data that must be understood by |chef|, but not modified.
   * - :doc:`essentials_cookbook_attribute_files_attribute_notation`
     - Attributes are a special key-value store called a mash within the context of the |ruby| DSL.


.. toctree::
   :hidden:

   essentials_cookbook_attribute_files_accessor_methods
   essentials_cookbook_attribute_files_file_methods
   essentials_cookbook_attribute_files_ordering
   essentials_cookbook_attribute_files_reload
   essentials_cookbook_attribute_files_attribute_types
   essentials_cookbook_attribute_files_attribute_persistence
   essentials_cookbook_attribute_files_attribute_precedence
   essentials_cookbook_attribute_files_attribute_automatic
   essentials_cookbook_attribute_files_attribute_notation