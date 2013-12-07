=====================================================
|chef manager|
=====================================================

.. include:: ../../includes_manager/includes_manager.rst

.. note:: |chef manager| is an add-on to |chef server oec| and must be :doc:`installed on the same physical hardware </install_manager>` as the |chef server oec| server.

Nodes
=====================================================
.. include:: ../../includes_node/includes_node.rst

The |chef manager| provides ways for users to `delete nodes and reset their private keys <http://docs.opscode.com/server_manage_nodes.html#manage>`_, `edit node attributes <http://docs.opscode.com/server_manage_nodes.html#node-attributes>`_, `manage the run-lists <http://docs.opscode.com/server_manage_nodes.html#run-lists>`_, `configure user and group permissions <http://docs.opscode.com/server_manage_nodes.html#permissions>`_, and `manage tags <http://docs.opscode.com/server_manage_nodes.html#manage-tags>`_.

.. image:: ../../images/step_manage_webui_nodes.png

Reports
=====================================================
.. include:: ../../includes_reporting/includes_reporting.rst

The |chef manager| provides ways for users to `configure the timeframe <http://docs.opscode.com/server_manage_reports.html#configure-reports>`_ around which a report is built, and then to `review the reports <http://docs.opscode.com/server_manage_reports.html#view-reports>`_ that are available for that timeframe.

.. image:: ../../images/step_manage_webui_reports.png

Policy
=====================================================
.. include:: ../../includes_chef/includes_chef_policy.rst

The |chef manager| provides ways for users to manage `data bags <http://docs.opscode.com/server_manage_data_bags.html>`_, `environments <http://docs.opscode.com/server_manage_environments.html>`_, `roles <http://docs.opscode.com/server_manage_roles.html>`_, `cookbooks <http://docs.opscode.com/server_manage_cookbooks.html>`_, and `clients <http://docs.opscode.com/server_manage_clients.html>`_,

`managing tags <http://docs.opscode.com/server_manage_nodes.html#manage-tags>`_.

.. image:: ../../images/step_manage_webui_policy.png

Admin
=====================================================
.. include:: ../../includes_manager/includes_manager_admin.rst

.. include:: ../../includes_server_rbac/includes_server_rbac.rst

.. image:: ../../images/step_manage_webui_admin.png

