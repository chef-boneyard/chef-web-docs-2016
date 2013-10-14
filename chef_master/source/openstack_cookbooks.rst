=====================================================
|chef openstack|: Cookbooks
=====================================================

.. include:: ../../includes_openstack/includes_openstack_cookbooks.rst

The canonical upstream Chef cookbooks and example repository are located in the `Stackforge Github organization <https://github.com/stackforge/>`_. Each integrated OpenStack project has a separate cookbook and repository.

|openstack| Cookbooks
-----------------------------------------------------
The following table lists all of the cookbooks that are available for |chef openstack|:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Cookbook
     - Description
   * - block-storage
     - .. include:: ../../includes_openstack/includes_openstack_cookbooks_block_storage.rst
   * - common
     - .. include:: ../../includes_openstack/includes_openstack_cookbooks_common.rst
   * - compute
     - .. include:: ../../includes_openstack/includes_openstack_cookbooks_compute.rst
   * - dashboard
     - .. include:: ../../includes_openstack/includes_openstack_cookbooks_dashboard.rst
   * - identity
     - .. include:: ../../includes_openstack/includes_openstack_cookbooks_identity.rst
   * - image
     - .. include:: ../../includes_openstack/includes_openstack_cookbooks_image.rst
   * - metering
     - .. include:: ../../includes_openstack/includes_openstack_cookbooks_metering.rst
   * - network
     - .. include:: ../../includes_openstack/includes_openstack_cookbooks_network.rst
   * - object-storage
     - .. include:: ../../includes_openstack/includes_openstack_cookbooks_object_storage.rst
   * - ops-database
     - .. include:: ../../includes_openstack/includes_openstack_cookbooks_ops_database.rst
   * - ops-messaging
     - .. include:: ../../includes_openstack/includes_openstack_cookbooks_ops_messaging.rst

.. note:: All |openstack| cookbooks are prefaced with ``cookbook-openstack-`` in addition to the name listed in the previous table. For example: ``cookbook-openstack-block-storage`` or ``cookbook-openstack-ops-messaging``.

Contribute
-----------------------------------------------------
.. include:: ../../includes_openstack/includes_openstack_cookbooks_contribute.rst

Commit Messages
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_openstack/includes_openstack_cookbooks_contribute_commit_messages.rst

Code Review
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_openstack/includes_openstack_cookbooks_contribute_code_review.rst

Test Cookbooks
-----------------------------------------------------
.. include:: ../../includes_openstack/includes_openstack_cookbooks_test.rst

