.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A sample |client rb| file that contains the most simple way to connect to https://manage.chef.io:

.. code-block:: ruby

   log_level        :info
   log_location     STDOUT
   chef_server_url  'https://api.opscode.com/organizations/<orgname>'
   validation_client_name '<orgname>-validator'
   validation_key '/etc/chef/validator.pem'
   client_key '/etc/chef/client.pem'
