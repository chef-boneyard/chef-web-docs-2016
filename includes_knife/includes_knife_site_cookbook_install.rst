.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``install`` argument is used to install a cookbook that has been downloaded from the community site to a local repository . This action uses the |git| version control system in conjunction with the |url cookbook| site to install community-contributed cookbooks to the local repository. Using this argument does the following:

  #. A new "pristine copy" branch is created in |git| for tracking the upstream.
  #. All existing cookbooks are removed from the branch.
  #. The cookbook is downloaded from |url cookbook| in the |tar gz| format.
  #. The downloaded cookbook is untarred and its contents are committed to |git|.
  #. The "pristine copy" branch is merged into the master branch.
  
This process allows the upstream cookbook in the master branch to be modified while letting |git| maintain changes as a separate patch. When an updated upstream version becomes available, those changes can be merged while maintaining any local modifications.

This argument has the following syntax::

   knife cookbook site install COOKBOOK_NAME [COOKBOOK_VERSION] (options)

This argument has the following options:

``-b``, ``--use-current-branch``
   |use-current-branch|

``-B BRANCH``, ``--branch BRANCH``
   |branch|

``-D``, ``--skip-dependencies``
   |skip-dependencies|

``-o PATH:PATH``, ``--cookbook-path PATH:PATH``
   |cookbook-path|

``COOKBOOK_VERSION``
   |COOKBOOK_VERSION install|

For example, to install the cookbook "getting-started", enter:

.. code-block:: bash

   $ knife cookbook site install getting-started

to return something like:

.. code-block:: bash

   Installing getting-started to /Users/sdanna/opscodesupport/.chef/../cookbooks
   Checking out the master branch.
   Creating pristine copy branch chef-vendor-getting-started
   Downloading getting-started from the cookbooks site at version 0.3.0 to
     /Users/sdanna/opscodesupport/.chef/../cookbooks/getting-started.tar.gz
   Cookbook saved: /Users/sdanna/opscodesupport/.chef/../cookbooks/getting-started.tar.gz
   Removing pre-existing version.
   Uncompressing getting-started version /Users/sdanna/opscodesupport/.chef/../cookbooks.
   removing downloaded tarball
   1 files updated, committing changes
   Creating tag cookbook-site-imported-getting-started-0.3.0
   Checking out the master branch.
   Updating 4d44b5b..b4c32f2
   Fast-forward
    cookbooks/getting-started/README.rdoc              |    4 +++  
    cookbooks/getting-started/attributes/default.rb    |    1 +
    cookbooks/getting-started/metadata.json            |   29 ++++++++++++++++++++
    cookbooks/getting-started/metadata.rb              |    6 ++++
    cookbooks/getting-started/recipes/default.rb       |   23 +++++++++++++++
    .../templates/default/chef-getting-started.txt.erb |    5 +++
    6 files changed, 68 insertions(+), 0 deletions(-)
    create mode 100644 cookbooks/getting-started/README.rdoc
    create mode 100644 cookbooks/getting-started/attributes/default.rb
    create mode 100644 cookbooks/getting-started/metadata.json
    create mode 100644 cookbooks/getting-started/metadata.rb
    create mode 100644 cookbooks/getting-started/recipes/default.rb
    create mode 100644 cookbooks/getting-started/templates/default/chef-getting-started.txt.erb
   Cookbook getting-started version 0.3.0 successfully installed 
