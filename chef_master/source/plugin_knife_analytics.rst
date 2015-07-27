=====================================================
knife analytics
=====================================================

.. include:: ../../includes_plugin_knife/includes_plugin_knife_analytics.rst

.. note:: Review the list of `common options <http://docs.chef.io/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

.. note:: .. include:: ../../includes_chef/includes_chef_subscriptions.rst

Install this plugin
=====================================================
.. include:: ../../step_plugin_knife/step_plugin_knife_analytics_install_rubygem.rst

Configure SSL
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_analytics_ssl_certificate.rst

Configure knife.rb
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_analytics_knife_rb.rst

action list
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_analytics_action_list.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_analytics_action_list_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_analytics_action_list_options.rst

action show
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_analytics_action_show.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_analytics_action_show_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_analytics_action_show_options.rst

alert list
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_analytics_alert_list.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_analytics_alert_list_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_analytics_alert_list_options.rst

alert show
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_analytics_alert_show.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_analytics_alert_show_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_analytics_alert_show_options.rst

notification create
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_analytics_notification_create.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_analytics_notification_create_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_analytics_notification_create_options.rst

Example
-----------------------------------------------------

**Create a notification**

To create a notification, run the following command:

.. code-block:: bash

   $ knife notification create FILE_NAME.json

where the ``FILE_NAME.json`` is similar to:

.. code-block:: javascript

   {
     "name": "chef-splunk-example",
     "notification_type": "Splunk",
     "modified_by": "admin",
     "delivery_options": {
       "hostname": "splunk.chef.inc.com",
       "port": 8089,
       "username": "username",
       "password": "password",
       "index": "chef-analytics",
       "sourcetype": "chef-analytics-data"
     }
   }

notification list
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_analytics_notification_list.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_analytics_notification_list_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_analytics_notification_list_options.rst

notification show
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_analytics_notification_show.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_analytics_notification_show_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_analytics_notification_show_options.rst

rule create
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_analytics_rule_create.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_analytics_rule_create_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_analytics_rule_create_options.rst

Example
-----------------------------------------------------

**Create a rule**

To create a rule, run the following command:

.. code-block:: bash

   $ knife rule create FILE_NAME.json

where the ``FILE_NAME.json`` is similar to:

.. code-block:: javascript

   {
     "name": "Rule name.",
     "modified_by": "user_name",
     "with": {
       "priority": 0
     },
     "active":true,
     "rule":"rules 'Rule group 1'\n
       rule on action\n  
       when\n    
         true\n  
       then\n    
         noop()\n  
       end\n
     end"
   }

**Create a Slack incoming webhooks notification**

.. include:: ../../includes_analytics/includes_analytics_webhook_example_slack.rst

rule list
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_analytics_rule_list.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_analytics_rule_list_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_analytics_rule_list_options.rst

rule show
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_analytics_rule_show.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_analytics_rule_show_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_analytics_rule_show_options.rst
