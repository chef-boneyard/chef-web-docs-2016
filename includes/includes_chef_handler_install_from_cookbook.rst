.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|handler chef handler| It ships as part of the ``chef_handler`` cookbook and provides a resource that can be easily included in recipes. To use the |lwrp chef handler| in a recipe, add the following |ruby| code:

.. code-block:: ruby

   chef_hander "MyOrganization::EmailMe" do
     source "/var/chef/handlers/email_me"
     action :enable
   end

