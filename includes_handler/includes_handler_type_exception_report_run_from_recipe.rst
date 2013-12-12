.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |lwrp chef handler| resource allows exception and report handlers to be enabled from within recipes, which can then added to the run-list for any node on which the exception or report handler should run. The |lwrp chef handler| resource is available from the |cookbook chef_handler| cookbook.

To use the |lwrp chef handler| resource in a recipe, add code similar to the following:

.. code-block:: ruby

   chef_handler "handler_namespace" do
     source "/var/chef/handlers/email_me"
     action :enable
   end

For example, a handler for |growl| needs to be installed at the beginning of the |chef client| run using the |resource package_gem| resource:

.. code-block:: ruby

   gem_package "chef-handler-growl"
     action :nothing
   end.run_action(:install)

and then is activated in a recipe by using the |lwrp chef handler| resource:

.. code-block:: ruby

   chef_handler "Chef::Handler::Growl" do
     source "chef/handler/growl"
     action :enable
   end
