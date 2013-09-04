.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

If you're interested in working with the `StackForge community cookbooks <http://github.com/stackforge/openstack-chef-repo>`_, diving in can be a bit intimidating as there are many moving pieces. This page borrows heavily from the `Getting Started wiki page <https://wiki.openstack.org/wiki/Chef/GettingStarted>`_ and Jay Pipes' excellent post `Working with the OpenStack Code Review and CI system – Chef Edition <http://www.joinfu.com/2013/05/working-with-the-openstack-code-review-and-ci-system-chef-edition/>`_

Communications
--------------
#openstack-chef
+++++++++++++++
``#openstack-chef`` is our channel on ``irc.freenode.net``. Many useful conversations and debugging sessions happen there, come join in and collaborate there. Archives are available at `community.opscode.com/chat/openstack-chef <http://community.opscode.com/chat/openstack-chef>`_

Google Group
+++++++++++++++
The OpenStack + Chef community has a mailing list on Google Groups: `groups.google.com/group/opscode-chef-openstack <http://groups.google.com/group/opscode-chef-openstack>`_. Traffic is typically a few posts a day, a great place for updates and longer discussions

Issue Tracking
--------------
Bugs and feature requests are tracked using the Launchpad project `OpenStack + Chef <https://launchpad.net/openstack-chef>`_. You may see the `list of open bugs <https://bugs.launchpad.net/openstack-chef>`_ or `file a new bug <https://bugs.launchpad.net/openstack-chef/+filebug>`_ there.

If you have an issue for the knife-openstack plugin, you may use the |opscode| `Ticket Tracking System <https://tickets.opscode.com>`_.

Feature Tracking
----------------
For major feature enhancements and planning you can use Launchpad's `Blueprints system for the OpenStack + Chef <https://blueprints.launchpad.net/openstack-chef/>` project on Launchpad. You may `create a new blueprint <https://blueprints.launchpad.net/openstack-chef/+addspec>` that may be targeted to a milestone and tracked appropriately. These are currently underutilized, but should improve as we get better at discussing a common roadmap.

Code
----
The canonical upstream Chef cookbooks and example repository are located in the `Stackforge Github organization <https://github.com/stackforge/>`_. Each integrated OpenStack project has a separate cookbook and repository.

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Cookbook
     - Description
   * - OpenStack Chef Repo
     - provides a reference Chef repository with example roles and environments for the OpenStack deployment.
   * - Common
     - provides common libraries and configuration across all of the cookbooks
   * - Ops Database
     - deploys and configures a reference database implementation used by the OpenStack deployment.
   * - Ops Messaging
     - deploys and configures a reference messaging implementation used by the OpenStack deployment.
   * - Block Storage
     - deploys and configures the OpenStack Block Storage service **Cinder**
   * - Compute
     - deploys and configures the OpenStack Compute service **Nova**
   * - Dashboard
     - deploys and configures the OpenStack Dashboard service **Horizon**
   * - Identity
     - deploys and configures the OpenStack Identity service **Keystone**
   * - Image
     - deploys and configures the OpenStack Image service **Glance**
   * - Metering
     - deploys and configures the OpenStack Metering service **Ceilometer**
   * - Network
     - deploys and configures the OpenStack Network service **Neutron** (formerly 'Quantum')
   * - Object Storage
     - deploys and configures the OpenStack Object Storage service **Swift**

Contributing to the OpenStack Chef Cookbooks
--------------------------------------------
See Jay Pipes' `Working with the OpenStack Code Review and CI system – Chef Edition <http://www.joinfu.com/2013/05/working-with-the-openstack-code-review-and-ci-system-chef-edition/>`_ entry for an introduction to contributing and pushing code to for the OpenStack Chef cookbooks housed on Stackforge.

Guidelines for Commit Messages
++++++++++++++++++++++++++++++
Please try to make commit messages useful. Read tpope's `excellent blog post <http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html>`_, as well as the `standard commit message guidelines for OpenStack projects <https://wiki.openstack.org/wiki/GitCommitMessages>`_ before making your first code push.

Guidelines for Code Reviewers
+++++++++++++++++++++++++++++
Here are some simple rules for reviewers of code on the Gerrit Review site:

   #. Never +1/+2R or +1A your own patch.
   #. All patches must have a commit message that meets the standard commit message guidelines for OpenStack projects. Failure of the commit message to meet these guidelines should prevent a +1A by a core reviewer.
   #. If the patch is more than just stylistic or typo fixes, it requires at least 2 core reviewers to add a +2R to the review before any core reviewer can +1A the review.
   #. If the patch changes existing behavior of any cookbook in a backwards-incompatible way, a corresponding bump in the version in the cookbook's metadata.rb must be included in patch set. Failure to do so should prevent a +1A by a core reviewer.
   #. If the patch adds additional functionality to a library cookbook, a corresponding bump in version number in the metadata.rb file should accompany the patch. Failure to do so should prevent a +1A by a core review.
