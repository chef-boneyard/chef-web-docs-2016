.. THIS PAGE IS IDENTICAL TO docs.chef.io/chef_client.html BY DESIGN
.. THIS PAGE DOCUMENTS chef-client version 12.1

=====================================================
|chef client_title|
=====================================================

.. include:: ../../includes_chef_client/includes_chef_client.rst

.. note:: |daemonize chef_client|

Node Types
=====================================================

.. include:: ../../includes_node/includes_node.rst

.. include:: ../../includes_node/includes_node_types.rst

Some important components of nodes include:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Feature
     - Description
   * - .. image:: ../../images/icon_chef_client.png
     - .. include:: ../../includes_chef_client/includes_chef_client.rst
   * - .. image:: ../../images/icon_ohai.png
     - .. include:: ../../includes_ohai/includes_ohai.rst

The |chef client_title| Run
=====================================================
.. include:: ../../includes_chef_client/includes_chef_client_run.rst

|chef validator|
-----------------------------------------------------
.. include:: ../../includes_security/includes_security_chef_validator.rst

SSL Certificates
-----------------------------------------------------
.. include:: ../../includes_node/includes_node_certificate.rst

Signed Header Authentication
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_security/includes_security_signed_header_authentication.rst


|chef client_audit|
=====================================================
.. include:: ../../includes_chef_client/includes_chef_client_audit_mode.rst

Use following option to run the |chef client| in |chef client_audit| mode:

``--audit-mode MODE``
   |audit_mode| Default value: ``disabled``.

The Audit Run
-----------------------------------------------------
.. include:: ../../includes_chef_client/includes_chef_client_audit_mode_run.rst


About Bootstrap Operations
=====================================================

.. include:: ../../includes_install/includes_install_chef_client.rst

.. include:: ../../includes_chef_client/includes_chef_client_bootstrap.rst
