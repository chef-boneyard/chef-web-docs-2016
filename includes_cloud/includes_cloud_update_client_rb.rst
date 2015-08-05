.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

#. Update the ``/etc/chef/client.rb`` on all of your nodes to use the new public DNS.  For example:

   .. code-block:: bash

      $ knife ssh name:* 'sudo sed -ie "s/chef_server_url.*/chef_server_url 'https://ec2-52-6-31-230.compute-1.amazonaws.com/organizations/your_org'/" /etc/chef/client.rb

   Replace ``ec2-52-6-31-230.compute-1.amazonaws.com`` with your new public DNS name and ``your_org`` with your organization name.
