=====================================================
diff
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

.. include:: ../../includes_knife/includes_knife_diff.rst

**Common Options**

.. include:: ../../includes_knife/includes_knife_common_options.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_diff_syntax.rst

**Options**

.. include:: ../../includes_knife/includes_knife_diff_options.rst

**knife.rb File Settings**

.. include:: ../../includes_knife/includes_knife_using_knife_rb.rst

.. include:: ../../includes_knife/includes_knife_diff_settings.rst

**Examples**

For example, to compare the differences between the local |chef| repository and the files that are on the |chef server|, enter:

.. code-block:: bash

   $ knife diff

To compare the "base.json" role to a "webserver.json" role, enter:

.. code-block:: bash

   $ knife diff roles/base.json roles/webserver.json

To diff a node named ``node-lb`` and then only return files that have been added, deleted, modified, or changed, enter:

.. code-block:: bash

   $ knife diff --name-status node-lb

to return something like:

.. code-block:: bash

   node-lb/recipes/eip.rb
   node-lb/recipes/heartbeat-int.rb
   node-lb/templates/default/corpsite.conf.erb
   node-lb/files/default/wildcard.node.com.crt
   node-lb/files/default/wildcard.node.com.crt-2009
   node-lb/files/default/wildcard.node.com.key
   node-lb/.gitignore
   node-lb/Rakefile





