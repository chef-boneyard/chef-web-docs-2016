=====================================================
|chef openstack|
=====================================================

.. warning:: DRAFT

The purpose of this guide is to help you understand how to deploy and manage your |openstack| deployment with |chef|, using the |chef openstack| cookbooks as a basis. |chef openstack| is a **community** project around the automated deployment and management of |openstack|. It has the goal of reducing fragmentation and increase collaboration for all users, and is frequently updated and evolving quickly (as is this guide). This guide is not intended to provide an introduction to |openstack|, there is already a tremendous amount of great content available at http://docs.openstack.org

This guide is broken into 7 broad sections:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Section
     - Description
   * - :doc:`Architecture </openstack_arch>`
     - About the architecture for |chef openstack| and several documented implementations
   * - :doc:`Deployment Prerequisites </openstack_deploy>`
     - About the hardware, network and operating system requirements
   * - :doc:`Development </openstack_develop>`
     - About the development ecosystem around |chef openstack| and how to participate
   * - :doc:`Cookbooks and Repositories </openstack_cookbooks>`
     - About the |chef openstack| community cookbooks and their dependencies
   * - :doc:`Installation </openstack_install>`
     - About techniques for installing |chef openstack|
   * - :doc:`knife-openstack </plugin_knife_openstack>`
     - About using knife-openstack to deploy infrastructure on top of any |openstack| deployment
   * - :doc:`Example Deployment </openstack_example>`
     - An example configuration of a small test lab

Community Resources
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

.. toctree::
   :hidden:

   openstack_architecture
   openstack_development
   openstack_cookbooks
   openstack_deployment
   openstack_installation
   plugin_knife_openstack
   openstack_example

