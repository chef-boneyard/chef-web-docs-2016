.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following example shows how the settings look when added to the configuration file:

.. code-block:: ruby

   chef_documentation_url "http://docs.opscode.com"
   disable_sign_up false
   events.port 11001
   logging.chef_log_level "info"
   logging.log_level "info"
   nginx_addon_prefix 30
   platform.user "pivotal"
   platform.key_file "/etc/opscode/webui_priv.pem"
   public_port 443
   redis.host "localhost"
   redis.port 11002
   redis.url # derived from redis.host ad redis.port
   runit_timeout 30
   secret_token "abcdefghij1234567890KLMNOPQRST1234567890uvwxyzabcd"
   services['opscode_manage_events'].enable true
   services['opscode_manage_webapp'].enable true
   services['opscode_manage_worker'].enable true
   support_email_address "support@getchef.com"
   support_site_url "http://getchef.com/support"
   support_tickets_url "https://getchef.com/support/tickets"
   webapp.backlog 1024
   webapp.listen { "127.0.0.1:#{port}" }
   webapp.port 9462
   webapp.tcp_nodelay true
   webapp.worker_processes 2
   webapp.worker_timeout 3600




