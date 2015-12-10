.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use ``notify()`` to configure notifications for a rule. Notifications may
be sent with the following notification types: email, webhook, |hipchat|,
and |splunk|. See :ref:`analytics_integrations` for more information on
the available notification types.

The syntax for this function:

.. code-block:: ruby

   notify(notificationName, stringTemplate)

where:

* ``notificationName`` is the name of the notification to trigger.

* ``stringTemplate`` is an optional |mustache| template that defines the
  notification. The template must evaluate to a valid JSON string.

Field names in the |mustache| template must be prefixed by ``message.``,
e.g. ``{{message.reported_at}}``. See :ref:`analytics_rules_message_fields`
for a list of the available field names for each message type. For more
information on the |mustache| template format, see https://mustache.github.io.

For example:

.. code-block:: ruby

   rules 'Send notification'
     rule on action
       when
         organization_name = 'ponyville' and
         (entity_type = 'foo' or entity_type = 'bar') and
         remote_hostname =~ '33\.3[0-9].*'
       then
         set value #foo = '100'
         set value #xyz = 'test'
         notify('slack', '{
           "text": "{{message.requestor_name}} did something at {{message.recorded_at}}!"
         }')
     end
   end

See :ref:`analytics_rules_send_a_notification` for more information.
