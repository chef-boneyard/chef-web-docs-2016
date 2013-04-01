=====================================================
azure (plug-in)
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

.. include:: ../../includes_plugin_knife/includes_plugin_knife.rst

Common Options
=====================================================
.. include:: ../../includes_knife/includes_knife_common_options.rst

Generate the Management Certificate
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_certificate.rst

image list
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_image_list.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_image_list_syntax.rst

**Options**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_image_list_options.rst

server create
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_create.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_create_syntax.rst

**Options**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_create_options.rst

**Examples**

For example, to provision a medium-sized |centos| machine configured as a web server in the "West US" data center, while also creating new hosted service and storage accounts, enter something like:

.. code-block:: bash

   $ knife azure server create -r "role[webserver]" --service-location "West US" --ssh-user foo 
     --ssh--password password --role-name web-apache-0001 --host-name web-apache 
     --tcp-endpoints 80:80,8080:8080 --source-image name_of_source_image --role-size Medium

To provision a medium-sized |centos| machine configured as a web server in the "West US" data center, while reusing existing hosted service and storage accounts, enter something like:

.. code-block:: bash

   $ knife azure server create -r "role[webserver]" --service-location "West US" 
     --hosted-service-name webservers --storage-account webservers-storage --ssh-user foo 
     --ssh--password password --role-name web-apache-0001 --host-name web-apache 
     --tcp-endpoints 80:80,8080:8080 --source-image name_of_source_image --role-size Medium

server delete
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_delete.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_delete_syntax.rst

**Options**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_delete_options.rst

**Examples**

For example, to delete an instance named "devops12", enter:

.. code-block:: bash

   $ knife azure server delete devops12

server describe
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_describe.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_describe_syntax.rst

**Options**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_describe_options.rst

**Examples**

For example, to view the details for a role named "admin", enter:

.. code-block:: bash

   $ knife azure server describe admin

server list
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_list.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_list_syntax.rst

**Options**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_list_options.rst


