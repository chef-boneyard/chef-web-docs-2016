.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.

#. Open ../email_handler/files/default/handlers/email_handler.rb
#. Add:

   .. code-block:: ruby
   
      @to_address = to_address
        end
      
        def report
          status = success? ? "Successful" : "Failed"
          subject = "#{status} Chef run report from #{node.name}"
            report_string = ""

#. Save the file.

* The report interface is used to define how a handler will behave and is a required part of any custom handler