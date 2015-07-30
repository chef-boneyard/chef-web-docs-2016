.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.


#. Open ``~/git.rb``.
#. Add:

   .. code-block:: ruby
   
      package 'git' do
        action :install
      end
      
      file '/home/chef/.gitconfig' do
        content '[user]\n  name=John Doe\n  email=jdoe@example\n'
        user 'chef'
        group 'chef'
      end

#. Save the file.
