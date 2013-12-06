.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A custom start handler is custom |ruby| code that defines the desired behavior for the handler. A custom start handler cannot be loaded (currently) into a |chef client| run using a ``chef_handler`` recipe. A custom start handler can only be loaded when it's listed in the ``start_handlers`` setting in the |client rb| file for the node on which the start handler is supposed to run.

The basic syntax for a custom start handler is as follows:

.. code-block:: ruby

   require 'chef/log'
   
   module ModuleName
     class StartHandler < ::Chef::Handler
       def report
         # Ruby code goes here
       end
     end
   end

A start handler is a newer feature within the larger set of handler functionality. They became necessary when |company_name| started building add-ons for |chef server oec|. The |reporting| add-on is designed to create reporting data based on a |chef client| run. And since |reporting| needs to be able to collect data for the entire |chef client| run, |reporting| needs to be enabled before anything else happens. This is done with a custom start handler, which is uses the |cookbook chef_client| cookbook to install the start handler each node for which reporting metrics will be generated.






