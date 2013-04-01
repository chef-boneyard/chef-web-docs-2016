=====================================================
bootstrap
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

.. include:: ../../includes_chef/includes_chef_bootstrap.rst

.. include:: ../../includes_knife/includes_knife_bootstrap.rst

**Common Options**

.. include:: ../../includes_knife/includes_knife_common_options.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_bootstrap_syntax.rst

**Options**

.. include:: ../../includes_knife/includes_knife_bootstrap_options.rst

**knife.rb File Settings**

.. include:: ../../includes_knife/includes_knife_using_knife_rb.rst

.. include:: ../../includes_knife/includes_knife_bootstrap_settings.rst

**Examples**

To pass an SSH password as part of the command:

.. code-block:: bash

   $ knife bootstrap 192.168.1.1 -x username -P PASSWORD --sudo

To use a file that contains a private key:

.. code-block:: bash

   $ knife bootstrap 192.168.1.1 -x username -i ~/.ssh/id_rsa --sudo

The following examples show how to customize the default bootstraps that are included with |chef|. 

**Ubuntu 12.04**

.. include:: ../../includes_knife/includes_knife_bootstrap_example_ubuntu.rst

**Debian and Apt**

.. include:: ../../includes_knife/includes_knife_bootstrap_example_debian.rst

