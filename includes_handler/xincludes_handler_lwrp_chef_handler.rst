.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A handler can be distributed using the |cookbook chef_handler| cookbook. This cookbook is authored and maintained by |company_name| and exposes an |lwrp| that can be used to enable custom handlers from within recipes and to include product-specific handlers from cookbooks. The |cookbook chef_handler| cookbook can be accessed here: https://github.com/opscode-cookbooks/chef_handler. See the ``README.md`` for additional information.

The |lwrp chef handler| is a lightweight resource that allows report and exception handlers to be enabled within recipes using |ruby| code, as opposed to them being hard-coded in the |client rb| file. The |lwrp chef handler| ships as part of the |cookbook chef_handler| cookbook. To use the |lwrp chef handler| in a recipe, add the following |ruby| code:

.. code-block:: ruby

   chef_handler "MyOrganization::EmailMe" do
     source "/var/chef/handlers/email_me"
     action :enable
   end

