=====================================================
terremark (plug-in)
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

.. include:: ../../includes_plugin_knife/includes_plugin_knife_terremark.rst

Common Options
=====================================================
.. include:: ../../includes_knife/includes_knife_common_options.rst

server create
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_terremark_server_create.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_terremark_server_create_syntax.rst

**Options**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_terremark_server_create_options.rst

**Examples**

For example, to create a new instance, enter:

.. code-block:: bash

   $ knife terremark server list server_name -A useraccount -K password -S service_name

To provision a new dual-core 1.0 GB |ubuntu| 10.04 web server with three attached disks with sizes of "25G", "50G", and "50G", enter something like:

.. code-block:: bash

   $ knife terremark server create --vcpus 2 -m 1024 -I 40 -A 'username' -K "password" 
     -r 'role[webserver]' -i ~/.ssh/ssh-identity-file.pem -N web-server-nginx --tcp 80,8080 
     --udp 5050 --disks 25,50,50

server delete
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_terremark_server_delete.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_terremark_server_delete_syntax.rst

**Options**

|no_options|

**Examples**

For example, to delete an instance with an identifier of "abcdefg", enter:

.. code-block:: bash

   $ knife terremark server delete abcdefg

server list
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_terremark_server_list.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_terremark_server_list_syntax.rst

**Options**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_terremark_server_list_options.rst

**Examples**

For example, enter:

.. code-block:: bash

   $ knife terremark server list -A useraccount -K password -S service_name