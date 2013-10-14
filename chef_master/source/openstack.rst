=====================================================
|chef openstack|
=====================================================

.. include:: ../../includes_openstack/includes_openstack.rst

This page describes how to use the |chef openstack| cookbooks as the basis for managing an |openstack| deployment with |chef|, as well as how to participate in the development and maintenance process of these cookbooks. For more information about |openstack| itself, see http://docs.openstack.org.

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Section
     - Description
   * - :doc:`Architecture </openstack_architecture>`
     - Learn about the deployment scenarios available to |chef openstack|.
   * - :doc:`Deployment Prerequisites </openstack_deploy>`
     - Learn about what needs to be done before installing |chef openstack|.
   * - :doc:`Install </openstack_install>`
     - Install |chef openstack|.
   * - :doc:`Development </openstack_develop>`
     - Participate in the |chef openstack| development process.
   * - :doc:`Repository </openstack_repository>`
     - The |chef repo openstack| contains all of the supporting files needed for |chef openstack|.
   * - :doc:`Cookbooks </openstack_cookbooks>`
     - All of the cookbooks used by |chef openstack| are hosted on |github|.
   * - :doc:`knife-openstack </plugin_knife_openstack>`
     - |knife openstack|
   * - :doc:`Example Deployment </openstack_example>`
     - A sample |chef openstack| deployment.

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

.. toctree::
   :hidden:

   openstack_architecture
   openstack_cookbooks
   openstack_deploy
   openstack_develop
   openstack_example
   openstack_install
   openstack_repository