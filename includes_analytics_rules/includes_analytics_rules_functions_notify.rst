.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use ``notify()`` to configure notifications for a rule. Notifications may be sent using HTTP or |hipchat|.

The syntax for this function:

.. code-block:: ruby

   notify(notificationType, notificationAlias, stringTemplate)

where:

* ``notificationType`` is the type of notification, e.g. HTTP or |hipchat|
* ``notificationAlias`` is the alias to which the notification is sent
* ``stringTemplate`` defines the notification

For example:

.. code-block:: ruby

   rule(action) when
     organization_name = "ponyville"
     and (entity_type = "foo" or entity_type = "bar")
     and remote_hostname =~ "33\.3[0-9].*"
   then
     set value #foo = "100"
     set value #xyz = "test"
     notify(hipchat "Hipchat notification <obj.requestor_name> did something at <obj.recorded_at>!")

