.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use ``notify()`` to configure notifications for a rule. Notifications may be sent with the following notification types: email, webhook, |hipchat|, and |splunk|.

The syntax for this function:

.. code-block:: ruby

   notify(notificationAlias, stringTemplate)

where:

* ``notificationAlias`` is the alias to which the notification is sent
* ``stringTemplate`` is an optional |mustache| template that defines the notification

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
         notify('hipchat', 'Hipchat notification {{message.requestor_name}} did something at {{message.recorded_at}}!')
     end
   end
