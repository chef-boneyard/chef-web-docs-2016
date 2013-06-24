.. This is an included how-to. 


To install the cookbook "getting-started", enter:

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
