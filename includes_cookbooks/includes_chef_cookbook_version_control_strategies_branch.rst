.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Using a branch tracking strategy requires that a branch for each environment exists in the source control and that each cookbook's versioning policy is tracked at the branch level. This approach is relatively simple and lightweight: for development environments that track the latest cookbooks, just bump the version before a cookbook is uploaded for testing. For any cookbooks that require higher levels of version control, |knife| allows cookbooks to be uploaded to specific environments and for cookbooks to be frozen (which prevents others from being able to make changes to that cookbook).

The typical workflow with a branch tracking version control strategy includes:

1. Bumping the version number as appropriate.
2. Making changes to a cookbook.
3. Uploading and testing a cookbook.
4. Moving a tested cookbook to production.

For example, to bump the version number::

   knife cookbook upload my-app

Make changes to the cookbook, upload and test it, repeating the process as required. When the cookbook is finished, move those changes to the production environment and use the ``--freeze`` option to prevent others from making further changes::

   knife cookbook upload  my-app -E production --freeze