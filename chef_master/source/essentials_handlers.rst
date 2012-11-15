=====================================================
About Exception and Report Handlers
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


.. include:: ../../includes_handler/includes_handler.rst

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Method
     - Description
   * - :doc:`essentials_handlers_properties`
     - A handler is a class that inherits from ``Chef::Handler`` and implements the ``report()`` function.
   * - :doc:`essentials_handlers_write`
     - A cookbook called ``chef_handler`` contains a lightweight resource provider that allows custom handlers to be easily included within recipes.
   * - :doc:`essentials_handlers_install`
     - A handler can be installed and configured in two ways: by using the |lwrp chef handler| |lwrp| or by a manual process.
   * - :doc:`essentials_handlers_distribute`
     - A handler can be distributed using a specific cookbook that is provided by |opscode| to help facilitate the distribution of custom |chef| handlers.
   * - :doc:`essentials_handlers_available_handlers`
     - |chef| includes one handler (``JsonFile``) and the |chef| community provides a number of open-source handlers that can be used by anyone in the |chef| community.


.. toctree::
   :hidden:

   essentials_handlers_properties
   essentials_handlers_write
   essentials_handlers_install
   essentials_handlers_distribute
   essentials_handlers_available_handlers

