.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Using a maximum version control strategy is required when everything needs to be tracked in source control. This approach is very similar to a branch tracking strategy while the cookbook is in development and being tested, but is more complicated and time-consuming (and requires file-level editing for environment data) in order to get the cookbook deployed to a production environment.

The typical workflow with a maximum version control strategy includes:

1. Bumping the version number as appropriate.
2. Making changes to a cookbook.
3. Uploading and testing a cookbook.
4. Moving a tested cookbook to production.

For example, to bump the version number::

   knife cookbook upload my-app

Make changes to the cookbook, upload and test it, repeating the process as required. When the cookbook is finished, move those changes to the production environment and use the ``--freeze`` option to prevent others from making further changes::

   knife cookbook upload  my-app -E production --freeze

Then modify the environment so that it prefers the newly-uploaded version::

  (vim|emacs|mate|ed) YOUR_REPO/environments/production.rb

Upload the updated environment::

   knife environment from file production.rb

And then deploy the new cookbook version.