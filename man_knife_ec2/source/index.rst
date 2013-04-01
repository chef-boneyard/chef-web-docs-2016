=====================================================
ec2 (plug-in)
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

.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2.rst

Common Options
=====================================================
.. include:: ../../includes_knife/includes_knife_common_options.rst

instance data
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_instance_data.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_instance_data_syntax.rst

**Options**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_instance_data_options.rst

server create
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_create.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_create_syntax.rst

**Options**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_create_options.rst

**Examples**

For example, to launch a new Amazon EC2 instance with the "webserver" role, enter:

.. code-block:: bash

   $ knife ec2 server create -r "role[webserver]" -I ami-2d4aa444 --flavor m1.small -G www,default -x ubuntu -N server01

To launch a new Amazon EC2 instance with multiple roles, enter:

.. code-block:: bash

   $ knife ec2 server create -r "role[base],role[webserver]" -I ami-2d4aa444 -G www,default -x ubuntu --node-name server01

server delete
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_delete.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_delete_syntax.rst

**Options**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_delete_options.rst

**Examples**

For example, to delete a node called "preprod" in an instance named "operations", enter:

.. code-block:: bash

   $ knife ec2 server delete operations preprod

server list
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_list.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_list_syntax.rst

**Options**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_ec2_server_list_options.rst
