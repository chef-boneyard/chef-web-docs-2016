.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Some guidelines for code reviewers:

#. Never +1/+2R or +1A your own patch.
#. All patches must have a commit message that meets the standard commit message guidelines for |openstack| projects. Failure of the commit message to meet these guidelines should prevent a +1A by a core reviewer.
#. If the patch is more than just stylistic or typo fixes, it requires at least 2 core reviewers to add a +2R to the review before any core reviewer can +1A the review.
#. If the patch changes existing behavior of any cookbook in a backwards-incompatible way, a corresponding bump in the version in the cookbook's |metadata rb| must be included in patch set. Failure to do so should prevent a +1A by a core reviewer.
#. If the patch adds additional functionality to a library cookbook, a corresponding bump in version number in the |metadata rb| file should accompany the patch. Failure to do so should prevent a +1A by a core review.
#. Review the code in gerrit and make constructive suggestions and comments

Here are some general steps to validate the change:
#. Checkout `single stack <http://https://github.com/stackforge/openstack-chef-repo>`_
#. Cherry-pick changes into respective local checkouts as pertains to the repos being changed
#. Point berksfile at the local changes
#. ``chef exec rake aio_nova`` (for now just ubuntu)
#. Make sure everything converges

h2. Access the Controller

.. code-block:: bash
   $ cd vms
   $ vagrant ssh controller
   $ sudo su -

h2. Testing the Controller

.. code-block:: bash
   # Access the controller as noted above
   $ source openrc
   $ nova service-list && nova hypervisor-list
   $ glance image-list
   $ keystone user-list
   $ nova list
   $ nova boot test --image cirros --flavor 1  --security-groups=allow_ssh --key-name=mykey
   $ ssh cirros@<ip address from nova list output>

Then try to ping something like google.com
