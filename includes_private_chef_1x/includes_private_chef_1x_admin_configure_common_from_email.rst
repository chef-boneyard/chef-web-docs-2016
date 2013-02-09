.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|chef private| sends emails for such things as password resets and organization invites. The ``from_email`` setting configures the email address that will be used to send these messages.

.. note:: This setting does not configure notification emails. Notification emails are sent using mail transfer agent settings on the server from which a notification email originates.

For example, using the default value:

.. code-block:: ruby

   donotreply@opscode.com

or:

.. code-block:: ruby

   from_email '"Chef" <opscode-chef@example.com>'