=====================================================
|chef openstack|
=====================================================

.. warning:: DRAFT

The purpose of this guide is to help you understand how to deploy and manage your |openstack| deployment with |chef|, using the |chef openstack| cookbooks as a basis. |chef openstack| is a **community** project around the automated deployment and management of |openstack|. It has the goal of reducing fragmentation and increase collaboration for all users, and is frequently updated and evolving quickly (as is this guide). This guide is not intended to provide an introduction to |openstack|, there is already a tremendous amount of great content available at http://docs.openstack.org

Architecture
=====================================================
.. include:: ../../includes_openstack/includes_openstack_architecture.rst

All-in-One
-----------------------------------------------------
.. include:: ../../includes_openstack/includes_openstack_architecture_allinone.rst

Single Controller + N Compute
-----------------------------------------------------
.. include:: ../../includes_openstack/includes_openstack_architecture_1+n.rst


Deployment Prerequisites
=====================================================
.. include:: ../../includes_openstack/includes_openstack_deployment.rst

|chef|
-----------------------------------------------------
.. include:: ../../includes_openstack/includes_openstack_deployment_chef.rst

Hardware
-----------------------------------------------------
.. include:: ../../includes_openstack/includes_openstack_deployment_hardware.rst

Network
-----------------------------------------------------
.. include:: ../../includes_openstack/includes_openstack_deployment_network.rst

Operating Systems
-----------------------------------------------------
.. include:: ../../includes_openstack/includes_openstack_deployment_os.rst

Images
-----------------------------------------------------
.. include:: ../../includes_openstack/includes_openstack_deployment_images.rst


Development
=====================================================
.. include:: ../../includes_openstack/includes_openstack_development.rst


Cookbooks and Repositories
=====================================================
openstack_cookbooks

|chef openstack| Repository
-----------------------------------------------------
.. include:: ../../includes_openstack/includes_openstack_chef_repo.rst

Cookbooks
-----------------------------------------------------
.. include:: ../../includes_openstack/includes_openstack_cookbooks.rst

.. include:: ../../includes_openstack/includes_openstack_cookbooks_common.rst

.. include:: ../../includes_openstack/includes_openstack_development_testing_cookbooks.rst

Block Storage
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_openstack/includes_openstack_cookbooks_block_storage.rst

Compute
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_openstack/includes_openstack_cookbooks_compute.rst

Dashboard
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_openstack/includes_openstack_cookbooks_dashboard.rst

Identity
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_openstack/includes_openstack_cookbooks_identity.rst

Image
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_openstack/includes_openstack_cookbooks_image.rst

Metering
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_openstack/includes_openstack_cookbooks_metering.rst

Network
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_openstack/includes_openstack_cookbooks_network.rst

Object Storage
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_openstack/includes_openstack_cookbooks_object_storage.rst

Ops Database
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_openstack/includes_openstack_cookbooks_ops_database.rst

Ops Messaging
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_openstack/includes_openstack_cookbooks_ops_messaging.rst

Installation
=====================================================
.. include:: ../../includes_openstack/includes_openstack_installation.rst

knife-openstack
=====================================================
See http://docs.opscode.com/plugin_knife_openstack.html.



Example Deployment
=====================================================
.. include:: ../../includes_openstack/includes_openstack_example.rst


For More Information ...
=====================================================
We are a community of developers, deployers and integrators who make working with |openstack| consistent and automated. Join us!

.. list-table::
   :widths: 150 450
   :header-rows: 0

   * - |irc|
     - ``#openstack-chef`` is our channel on ``irc.freenode.net``. Many useful conversations and debugging sessions happen there. Archives are available at `community.opscode.com/chat/openstack-chef <http://community.opscode.com/chat/openstack-chef>`_
   * - Mailing List
     - `groups.google.com/group/opscode-chef-openstack <http://groups.google.com/group/opscode-chef-openstack>`_ is the mailing list. Traffic is typically a few posts a day, a great place for updates and longer discussions
   * - |chef openstack| Wiki
     - `wiki.openstack.org <https://wiki.openstack.org/wiki/Chef/GettingStarted>`_ most of this information is migrated here
   * - |twitter|
     - `@chefopenstack <http://twitter.com/chefopenstack>`_


If you have questions or concerns outside the mailing list, please email matt@opscode.com.
