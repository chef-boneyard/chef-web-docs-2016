.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.

#. Open cookbooks/email_handler/attributes/default.rb
#. Add:

   .. code-block:: ruby
   
      default['email_handler']['from_address'] = "chef@localhost"
      default['email_handler']['to_address'] = "chef@localhost"

#. Save the file.
