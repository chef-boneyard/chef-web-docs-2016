.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


For example, using a library to define how to send email:

.. code-block:: ruby

   require 'net/smtp'
   
   module HandlerDemo
     class Helper
   
       def send_email_on_failure(node_name)
   
         message = "From: Chef <chef@chef.io>\n"
         message << "To: Grant <grantmc@chef.io>\n"
         message << "Subject: chef-client Run Failed\n"
         message << "Date: #{Time.now.rfc2822}\n\n"
         message << "Chef run failed on #{node.name}\n"
         Net::SMTP.start('localhost', 25) do |smtp|
           smtp.send_message message, 'chef@chef.io', 'grantmc@chef.io'
         end    
       end
     end
   end

and then invoking the library helper in a recipe using the ``on`` method:

.. code-block:: ruby

   Chef.event_handler do
     on :run_failed do
       HandlerDemo::Helper.new.send_email_on_failure(Chef.run_context.node.name)
     end
   end

The following code block will trigger an exception and send an email:

.. code-block:: ruby

   ruby_block 'fail the run to show off the foregoing' do
     block do
       fail 'deliberately failing the run'
     end
   end
