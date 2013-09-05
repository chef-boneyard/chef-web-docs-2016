.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Some simple rules for code reviewers:

#. Never +1/+2R or +1A your own patch.
#. All patches must have a commit message that meets the standard commit message guidelines for |openstack| projects. Failure of the commit message to meet these guidelines should prevent a +1A by a core reviewer.
#. If the patch is more than just stylistic or typo fixes, it requires at least 2 core reviewers to add a +2R to the review before any core reviewer can +1A the review.
#. If the patch changes existing behavior of any cookbook in a backwards-incompatible way, a corresponding bump in the version in the cookbook's |metadata rb| must be included in patch set. Failure to do so should prevent a +1A by a core reviewer.
#. If the patch adds additional functionality to a library cookbook, a corresponding bump in version number in the |metadata rb| file should accompany the patch. Failure to do so should prevent a +1A by a core review.
