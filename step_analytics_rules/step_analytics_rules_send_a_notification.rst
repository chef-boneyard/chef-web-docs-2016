.. |analytics_rules_functions_notify| replace:: ``notify()``

Using the |analytics_rules_functions_notify|_ function, notifications can
be sent when a rule's conditions are met. First, a notification must be
created. For more information on creating notifications, see
:ref:`analytics_integrations`.

Once you've created a notification you'll use its name as the first
argument given to the ``notify()`` function. For example, suppose you've
created a notification with the name ``email-admins``:

.. image:: ../../images/analytics_email_notification_name.png

This notification could then be triggered by creating a rule that calls ``notify()``, e.g.:

.. code-block:: ruby

   notify("email-admins", "Your message here.")

The below rule would trigger this notification for every `run_start`
message:

.. code-block:: ruby

   rule "Email notification" on run_start
   when
     true
   then
     notify("email-admins", "Run started on {{message.node_name}}")
   end

See |analytics_rules_functions_notify|_ and the other sections in this
document for more information on creating rules that trigger
notifications.
