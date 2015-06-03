=====================================================
|openstack chef|
=====================================================

.. include:: ../../includes_openstack/includes_openstack.rst

This page describes how to use the |openstack chef| cookbooks as the basis for managing an |openstack| deployment with |chef|, as well as how to participate in the development and maintenance process of these cookbooks. For more information about |openstack| itself, see http://docs.openstack.org.

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Section
     - Description
   * - :doc:`Architecture </openstack_architecture>`
     - Learn about the deployment scenarios available to |openstack chef|.
   * - :doc:`Deployment Prerequisites </openstack_deploy>`
     - Learn about what needs to be done before installing |openstack chef|.
   * - :doc:`Install </openstack_install>`
     - Install |openstack chef|.
   * - :doc:`Development </openstack_develop>`
     - Participate in the |openstack chef| development process.
   * - :doc:`Repository </openstack_repository>`
     - The |openstack chef_repo| contains all of the supporting files needed for |openstack chef|.
   * - :doc:`Cookbooks </openstack_cookbooks>`
     - All of the cookbooks used by |openstack chef| are hosted on |github|.
   * - :doc:`knife-openstack </plugin_knife_openstack>`
     - .. include:: ../../includes_plugin_knife/includes_plugin_knife_openstack.rst
   * - :doc:`Example Deployment </openstack_example>`
     - A sample |openstack chef| deployment.

For More Information ...
=====================================================
We are a community of developers, deployers and integrators who make working with |openstack| consistent and automated. Join us!

.. list-table::
   :widths: 150 450
   :header-rows: 0

   * - |irc|
     - ``#openstack-chef`` is our development channel on ``irc.freenode.net``. Many useful conversations and debugging sessions happen there. We have our IRC status meeting is at 1600 UTC 1100 EST 0800 PST on Mondays located in ``#openstack-meeting-3``. Archives are available at  and the meeting notes via `http://eavesdrop.openstack.org/meetings/openstack-chef/ <http://eavesdrop.org/meetings/openstack-chef/>`_
   * - Mailing List
     - We leverage the official `OpenStack Dev Mailing list <http://lists.openstack.org/cgi-bin/mailman/listinfo/openstack-dev/>`_ for our Mailing list communitcations. We use the tag [chef] to help with the filtering.
   * - |openstack chef| Wiki
     - `wiki.openstack.org/wiki/Chef <https://wiki.openstack.org/wiki/Chef/>`_ most of this community information is migrated here
   * - |twitter|
     - `@chefopenstack <http://twitter.com/chefopenstack>`_

If you have questions or concerns outside the mailing list, please email jj@chef.io or reach out to ``j^2`` on the IRC channel.

.. toctree::
   :hidden:

   openstack_architecture
   openstack_cookbooks
   openstack_deploy
   openstack_develop
   openstack_example
   openstack_install
   openstack_repository
