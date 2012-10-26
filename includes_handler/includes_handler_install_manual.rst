.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

To manually install and configure a handler, the |client rb| file must be edited. There is no default install location for handlers. The simplest way to distribute and install them is via |rubygems|, though many methods (|github|, HTTP, and so on) will also work. Once the handler is installed on the system, enable it in the |client rb| file by requiring it. 

For example, if |rubygems| was used to install the handler, adding the following to the |client rb| file will enable it:

.. code-block:: ruby

   require "rubygems"
   require "name_of_handler"

Or if the handler was installed using another method, it may need to be required using the full path to the file:

.. code-block:: ruby

   require "/var/chef/handlers/email_me"         # the installation path

After the handler is installed, it may require additional configuration. This will vary from handler to handler. If a handler is a very simple handler, it may only require the creation of a new instance. For example, if a handler named ``MyOrganization::EmailMe`` is hardcoded for all of the values required to send email, a new instance is required:

.. code-block:: ruby

   email_handler = MyOrganization::EmailMe.new   # a simple handler

and then the notification types need to be configured:

.. code-block:: ruby

   report_handlers << email_handler              # these fire at the end of a successful run
   exception_handlers << email_handler           # these fire at the end of a failed run

Additional configuration steps will vary from handler to handler. For a simple handler, the required additions to the |client rb| file (when pulled together into a single code block) would look like this:

.. code-block:: ruby

   require "/var/chef/handlers/email_me"         # the installation path
   
   email_handler = MyOrganization::EmailMe.new   # a simple handler
   
   report_handlers << email_handler              # these fire at the end of a successful run
   exception_handlers << email_handler           # these fire at the end of a failed run


