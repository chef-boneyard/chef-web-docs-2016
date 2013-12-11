.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |lwrp chef handler| resource allows exception and report handlers to be enabled from recipes, which are then added to the run-lists for any node on which an exception or report handler should run. The |lwrp chef handler| resource is available from the |cookbook chef_handler| cookbook.

To use the |lwrp chef handler| resource in a recipe, add the following |ruby| code:

.. code-block:: ruby

   chef_handler "MyOrganization::EmailMe" do
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
