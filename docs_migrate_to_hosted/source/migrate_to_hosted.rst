=====================================================
Migrate to Hosted Chef from Open Source Chef Server
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


.. include:: ../../includes_chef/includes_chef_open_source.rst

.. include:: ../../includes_chef/includes_chef_hosted.rst

.. include:: ../../includes_migrate/includes_migrate_to_hosted.rst

Follow the steps below to migrate from an |chef open server| to |chef hosted|.

System Requirements
=====================================================
|chef hosted| does not have system requirements other than each node that will be configured by |chef| must be able to communicate with the |chef hosted| server and that each workstation that will be used to manage and configure the organization (such as by using |knife| to upload cookbooks) must also be able to communicate with the |chef hosted| server. Both nodes and workstations, once properly configured and registered with the |chef server|, are also referred to as |chef api client|.

Migrate to |chef hosted|
=====================================================
The steps for migrating to |chef hosted| from an instance of |chef open server| are:

1. Download the ``backup_export`` cookbook and install the |knife| plugin.
2. Determine which organization and repository to use.
3. Verify the new |chef hosted| organization does not have any nodes assigned to it.
4. Register nodes with |chef hosted|.
5. Upload data to |chef hosted|.
6. Run the |chef client| on all nodes.

See the following sections for more information about each step. 

Download the ``backup_export`` cookbook
-----------------------------------------------------
.. include:: ../../step_migrate/step_migrate_to_hosted_prepare_backup.rst

Determine which organization and repository to use
-----------------------------------------------------
.. include:: ../../step_migrate/step_migrate_to_hosted_create_accounts.rst

Verify the new organization does not have any nodes
-----------------------------------------------------
.. include:: ../../step_migrate/step_migrate_to_hosted_verify_nodes_and_client.rst

Register nodes with |chef hosted|
-----------------------------------------------------
.. include:: ../../step_migrate/step_migrate_to_hosted_register.rst

Upload Data -- DONE
-----------------------------------------------------
To restore the data (including run-lists and node attributes) that was being used with |chef open server| server, it must be uploaded to the |chef hosted| server. There are two options: use the ``backup_restore`` |knife| plugin or use the ``knife upload`` sub-command.

Using the ``backup_restore`` Knife Plugin -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife_plugin/step_knife_plugin_backuprestore_install.rst

.. include:: ../../step_knife_plugin/step_knife_plugin_backuprestore_run.rst

Using Knife -- DONE
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_upload.rst

.. include:: ../../step_knife/step_knife_upload_repository.rst

.. include:: ../../step_knife/step_knife_upload_directory.rst

If only data for specific data bags, environments, nodes, and roles should be uploaded, use the ``from file`` arguments for the ``knife data bag``, ``knife environment``, ``knife node``, and ``knife role`` sub-commands. The path used for the ``from file`` argument must be the path to backed-up data bag, environment, node, or role. 

A cookbook can be uploaded individually using the ``upload`` argument for the ``knife cookbook`` sub-command.

Run every |chef client| -- DONE
-----------------------------------------------------
After all of the nodes are registered with the |chef hosted| server and all of the data has been restored to the |chef hosted| server, the last step is to kick off a |chef| run on each of the nodes. The easiest way to do that is to use the ``knife ssh`` sub-command and issue a ``sudo chef-client`` command to all of the nodes that will be managed by the |chef hosted| server.

.. include:: ../../step_knife/step_knife_ssh_run_chef_client_on_all_nodes.rst

