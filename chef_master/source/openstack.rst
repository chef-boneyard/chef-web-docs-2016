=====================================================
Chef for OpenStack
=====================================================

Overview
-------------------

The purpose of this guide is to help you understand how to deploy and manage your OpenStack deployment with Chef, using the **Chef for OpenStack** cookbooks as a basis. **Chef for OpenStack** is a community project, frequently updated and evolving quickly. This guide is not intended to provide an introduction to OpenStack, there is already a tremendous amount of great content available at http://docs.openstack.org

This guide is broken into 6 broad sections:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Section
     - Description
   * - :doc:`Architecture </openstack_architecture>`
     - overview of the architecture for **Chef for OpenStack**
   * - :doc:`Development </openstack_development>`
     - overview of the development ecosystem around **Chef for OpenStack**
   * - :doc:`Deployment Prerequisites </openstack_deployment>`
     - the hardware, network and operating system requirements
   * - :doc:`Installation </openstack_installation>`
     - techniques for installing **Chef for Openstack**
   * - :doc:`knife-openstack </plugin_knife_openstack>`
     - Using knife-openstack to deploy infrastructure on top of any OpenStack deployment
   * - :doc:`Example Deployment </openstack_example>`
     - example configuration of a small test lab


Community Resources
-------------------
We are a community of developers, deployers and integrators who make working with OpenStack consistent and automated. Join us!

 * **IRC**: ``#openstack-chef`` is our channel on ``irc.freenode.net``. Many useful conversations and debugging sessions happen there. Archives are available at `community.opscode.com/chat/openstack-chef <http://community.opscode.com/chat/openstack-chef>`_
 * **Mailing List**: `groups.google.com/group/opscode-chef-openstack <http://groups.google.com/group/opscode-chef-openstack>`_ is the mailing list. Traffic is typically a few posts a day, a great place for updates and longer discussions!
 * **OpenStack Chef Wiki**: `wiki.openstack.org <https://wiki.openstack.org/wiki/Chef/GettingStarted>`_
 * **Twitter**: `@chefopenstack <http://twitter.com/chefopenstack>`_

If you have questions or concerns, please email matt@opscode.com.

.. toctree::
   :hidden:

   openstack_architecture
   openstack_development
   openstack_deployment
   openstack_installation
   plugin_knife_openstack
   openstack_example

