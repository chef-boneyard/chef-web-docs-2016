.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|chef private| sends emails for such things as password resets and organization invites. This is the email address that will be used as the originating address for these messages.

Note that this does not apply to notification emails - those will be sent using the defaults configured for the MTA of the server originating the email.

Default Value: 

.. code-block:: ruby

   donotreply@opscode.com

For example:

.. code-block:: ruby

   from_email '"Chef" <opscode-chef@example.com>'