.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |lwrp application ruby rails| lightweight resource is used to deploy |ruby on rails| web applications from a source control management repository. This lightweight resource uses the ``deploy_revision`` provider from the |resource deploy| resource to perform the bulk of its tasks.

For applications that use |bundler|, if a |gemfilelock| is present, then |gems| will be installed with ``bundle install --deployment``, which results in |gems| being installed in the application directory.
