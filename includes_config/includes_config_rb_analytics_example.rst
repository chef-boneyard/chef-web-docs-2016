.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following example shows how the settings look when added to the configuration file:

.. code-block:: ruby

   # General settings
   analytics_fqdn 'chef-analytics.example.com'
   topology 'standalone'

   # actions_consumer settings
   actions_consumer['hipchat_api_token'] = '4yZvEWO6gnVhjtl3F6aU12obylgNXzzqmklI5jP0'
   actions_consumer['hipchat_room'] = 'Chef Notifications'
   actions_consumer['hipchat_enabled'] = ['prod', 'preprod']
