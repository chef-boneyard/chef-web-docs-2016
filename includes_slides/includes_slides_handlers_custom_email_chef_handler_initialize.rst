.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.

#. Open ../email_handler/files/default/handlers/email_handler.rb
#. Add:

   .. code-block:: ruby
   
      class EmailMe < Chef::Handler
      
        def initialize(from_address, to_address)
          @from_address = from_address
          @to_address = to_address
        end

#. Save the file.

* Initialize the handler with the arguments we passed in the definition
* You can create the method with any args you need to meet your requirements
