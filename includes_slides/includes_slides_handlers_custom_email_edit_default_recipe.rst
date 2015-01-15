.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.

#. Open cookbooks/email_handler/recipes/default.rb
#. Add:

   .. code-block:: ruby
   
      chef_gem "pony" do
        action :install
      end
   
      include_recipe "chef_handler"

#. Save the file.
