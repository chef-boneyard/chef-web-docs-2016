.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.

#. Open cookbooks/email_handler/recipes/default.rb
#. Add:

   .. code-block:: ruby
   
      cookbook_file "#{node['chef_handler']['handler_path']}/email_handler.rb" do
        source "handlers/email_handler.rb"
        owner "root"
        group "root"
        mode "0644"
      end
   
      chef_handler "MyCompany::EmailMe" do
        source "#{node['chef_handler']['handler_path']}/email_handler.rb"
        arguments [node['email_handler']['from_address'],
                   node['email_handler']['to_address']]
        action :enable
      end

#. Save the file.
