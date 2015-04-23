.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.


Run:

.. code-block:: bash

   $ chef generate cookbook apache

Returns:

.. code-block:: bash

   Compiling Cookbooks...
   Recipe: code_generator::cookbook
     * directory[/home/chef/chef-repo/cookbooks/apache] action create
       - create new directory /home/chef/chef-repo/cookbooks/apache
       - restore selinux security context
     * template[/home/chef/chef-repo/cookbooks/apache/metadata.rb] action
       create_if_missing
       - create new file /home/chef/chef-repo/cookbooks/apache/metadata.rb
       - update content in /home/chef/chef-repo/cookbooks/apache/metadata.rb
         from none to 4c0e2d
       - restore selinux security context
     * template[/home/chef/chef-repo/cookbooks/apache/README.md] action
       create_if_missing
       - create new file /home/chef/chef-repo/cookbooks/apache/README.md
    ...
