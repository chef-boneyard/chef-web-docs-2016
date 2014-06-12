=====================================================
|chef ctl| (executable)
=====================================================

.. include:: ../../includes_ctl_chef/includes_ctl_chef.rst

chef gem
=====================================================
.. include:: ../../includes_ctl_chef/includes_ctl_chef_gem.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_gem_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_gem_options.rst

Examples
-----------------------------------------------------
None.

chef generate app
=====================================================
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_app.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_app_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_app_options.rst

Examples
-----------------------------------------------------

**Create an application**

.. code-block:: bash

   $ chef generate app chef-repo
   
will return something similar to:

.. code-block:: bash

   Recipe: code_generator::app
     * directory[/Users/grantmc/chef-repo] action create
       - create new directory /Users/grantmc/chef-repo
   
     * template[/Users/grantmc/chef-repo/.kitchen.yml] action create
       - create new file /Users/grantmc/chef-repo/.kitchen.yml
   
     * template[/Users/grantmc/chef-repo/README.md] action create
       - create new file /Users/grantmc/chef-repo/README.md
   
     * directory[/Users/grantmc/chef-repo/cookbooks] action create
       - create new directory /Users/grantmc/chef-repo/cookbooks
   
     * directory[/Users/grantmc/chef-repo/cookbooks/grantmc] action create
       - create new directory /Users/grantmc/chef-repo/cookbooks/grantmc
   
     * template[/Users/grantmc/chef-repo/cookbooks/grantmc/metadata.rb] action create
       - create new file /Users/grantmc/chef-repo/cookbooks/grantmc/metadata.rb
   
     * cookbook_file[/Users/grantmc/chef-repo/cookbooks/grantmc/chefignore] action create
       - create new file /Users/grantmc/chef-repo/cookbooks/grantmc/chefignore

     * cookbook_file[/Users/grantmc/chef-repo/cookbooks/grantmc/Berksfile] action create
       - create new file /Users/grantmc/chef-repo/cookbooks/grantmc/Berksfile

     * directory[/Users/grantmc/chef-repo/cookbooks/grantmc/recipes] action create
       - create new directory /Users/grantmc/chef-repo/cookbooks/grantmc/recipes

     * template[/Users/grantmc/chef-repo/cookbooks/grantmc/recipes/default.rb] action create
       - create new file /Users/grantmc/chef-repo/cookbooks/grantmc/recipes/default.rb
   
     * execute[initialize-git] action run
       - execute git init .
   
     * cookbook_file[/Users/grantmc/chef-repo/.gitignore] action create
       - create new file /Users/grantmc/chef-repo/.gitignore

chef generate attribute
=====================================================
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_attribute.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_attribute_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_attribute_options.rst

Examples
-----------------------------------------------------

**Create an attribute**

.. code-block:: bash

   $ chef generate attribute /path/to/cookbook FOO
   
will return something similar to:

.. code-block:: bash

   Recipe: code_generator::attribute
     * directory[/Users/grantmc/chef-repo/cookbooks/chef-repo/attributes] action create
       - create new directory /Users/grantmc/chef-repo/cookbooks/chef-repo/attributes
   
     * template[/Users/grantmc/chef-repo/cookbooks/chef-repo/attributes/FOO.rb] action create
       - create new file /Users/grantmc/chef-repo/cookbooks/chef-repo/attributes/FOO.rb
   

chef generate cookbook
=====================================================
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_cookbook.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_cookbook_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_cookbook_options.rst

Examples
-----------------------------------------------------
None.

chef generate file
=====================================================
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_file.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_file_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_file_options.rst

Examples
-----------------------------------------------------
None.

chef generate lwrp
=====================================================
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_lwrp.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_lwrp_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_lwrp_options.rst

Examples
-----------------------------------------------------
None.

chef generate recipe
=====================================================
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_recipe.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_recipe_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_recipe_options.rst

Examples
-----------------------------------------------------
None.

chef generate template
=====================================================
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_template.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_template_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_template_options.rst

Examples
-----------------------------------------------------
None.

chef verify
=====================================================
.. include:: ../../includes_ctl_chef/includes_ctl_chef_verify.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_verify_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_verify_options.rst

Examples
-----------------------------------------------------
None.