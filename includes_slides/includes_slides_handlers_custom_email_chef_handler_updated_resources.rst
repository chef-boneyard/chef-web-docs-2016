.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.

#. Open ../email_handler/files/default/handlers/email_handler.rb
#. Add:

   .. code-block:: ruby
   
      # report on changed resources
      if ! run_status.updated_resources.empty?
        # get some info about all the changed resources!
        run_status.updated_resources.each do |r|
          report_string += "The resource #{r.name} was changed in cookbook
                            #{r.cookbook_name} at #{r.source_line}\n"
        end
        else
          report_string += "No resources changed by chef-client\n"
        end

#. Save the file.

* updated_resources records information about all the resources changed during a chef-client run
* read through this hash with .each, pull interesting information out about each resource
