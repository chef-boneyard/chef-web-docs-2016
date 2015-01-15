.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.

#. Open ../email_handler/files/default/handlers/email_handler.rb
#. Add:

   .. code-block:: ruby
   
      require 'rubygems'
      require 'pony'
      
      module MyCompany
        class EmailMe < Chef::Handler

#. Save the file.

* All custom exception and report handlers are defined using Ruby and must be a subclass of the Chef::Handler class.
* The module and class match what we defined as the name of the chef_handler in the recipe