.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.

#. Open ../email_handler/files/default/handlers/email_handler.rb
#. Add:

   .. code-block:: ruby
   
          report_string += "No resources changed by chef-client\n"
        end
     
            Pony.mail(:to => @to_address,
                      :from => @from_address,
                      :subject => subject,
                      :body => report_string)
          end
        end
      end

#. Save the file.

* Use Pony.mail to send a message containing info on changed resources
