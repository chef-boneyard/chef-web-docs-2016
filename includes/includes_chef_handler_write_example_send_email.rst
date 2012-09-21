.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This example describes a simple handler that sends an email when a |chef| run fails. The handler uses the |pony| library (https://github.com/benprew/pony), which is an "express way to send email in |ruby|". For this example to work, it must be possible to send email via |path user sendmail| or via |smtp| to localhost. The following example shows how to use the |pony| library to send email:

.. code-block:: ruby

   require 'rubygems'
   require 'pony'
   
   module MyOrganization
     class EmailMe < Chef::Handler
       
       def initialize(from_address, to_address)
       @from_address = from_address
       @to_address   = to_address
       end
       
       def report
       # The Node is available as +node+
       subject = "Chef run failed on #{node.name}\n"
       # +run_status+ is a value object with all of the run status data
       message = "#{run_status.formatted_exception}\n"
       # Join the backtrace lines. Coerce to an array just in case.
       message << Array(backtrace).join("\n")
       
       Pony.mail(:to => @to_address, :from => @from_address, :subject => subject, :body => message)
         
       end
     end
   end

This example can be extended as required.

