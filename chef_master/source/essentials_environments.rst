=====================================================
About Environments
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


.. include:: ../../includes_environment/includes_environment.rst

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Method
     - Description
   * - :doc:`essentials_environments_default`
     - Every |chef| organization must have at least one environment.
   * - :doc:`essentials_environments_formats`
     - Environment data is stored in two formats: as a |ruby| file that contains domain-specific language and as |json| data.
   * - :doc:`essentials_environments_create`
     - An environment can be created using |ruby|, with |json|, using |knife|, the |chef manager|, or by using the |api chef server|.
   * - :doc:`essentials_environments_manage`
     - There are several ways to manage environments, including with |knife| and the |chef manager|.

.. include:: ../../includes_environment/includes_environment_attribute.rst

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Method
     - Description
   * - :doc:`essentials_environments_attributes_types`
     - There are four types of attributes: ``default``, ``normal``, ``override``, and ``automatic``.
   * - :doc:`essentials_environments_attributes_persistence`
     - During a |chef| run, saved attributes are retrieved from the |chef server| and are merged with the attributes on the local system.
   * - :doc:`essentials_environments_attributes_precedence`
     - At the beginning of a |chef| run, all default, override, and automatic attributes are reset.
   * - :doc:`essentials_environments_attributes_automatic`
     - An automatic attribute is data that must be understood by |chef|, but not modified.
   * - :doc:`essentials_environments_attributes_notation`
     - Attributes are a special key-value store called a mash within the context of the |ruby| DSL.


.. toctree::
   :hidden:

   essentials_environments_default
   essentials_environments_formats
   essentials_environments_create
   essentials_environments_manage
   essentials_environments_attributes_types
   essentials_environments_attributes_persistence
   essentials_environments_attributes_precedence
   essentials_environments_attributes_automatic
   essentials_environments_attributes_notation
