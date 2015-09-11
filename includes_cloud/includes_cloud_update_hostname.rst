.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

#. Run `chef-marketplace-ctl hostname` to view the current hostname.

#. Run `chef-marketplace-ctl hostname <new.hostname.com>` to update the hostname.

   .. note:: If you update the hostname after you've set up the |chef server| you should verify that the `api_fqdn` setting is correct in `/etc/opscode/chef-server.rb`.

#. Run `chef-server-ctl reconfigure && opscode-manage-ctl reconfigure` to reconfigure the |chef server| with your new hostname.
