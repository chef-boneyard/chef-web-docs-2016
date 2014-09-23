.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use ``notify`` to configure notifications for a rule. Notifications may be sent using HTTP or |hipchat|.

The syntax for this function:

.. code-block:: java

   notify(notificationType, notificationAlias, stringTemplate)

where:

* ``notificationType`` xxxxx
* ``notificationAlias`` xxxxx
* ``stringTemplate`` xxxxx

For example:

.. code-block:: java

   rule(action) when
     organization_name = "ponyville"
     and (entity_type = "foo" or entity_type = "bar")
     and remote_hostname ~= "33\.3[0-9].*"
   then
     set value #foo = "100"
     set value #xyz = "test"
     notify(hipchat "Hipchat notification <obj.requestor_name> did something at <obj.recorded_at>!")

And:

.. code-block:: java

   xxxxx