.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|chef private| generates notification emails from internal monitoring and periodic |cron| jobs. This is the email address they will be sent to.

Default Value:

.. code-block:: ruby

   pc-default@opscode.com

For example:

.. code-block:: ruby

   notification_email "sysadmin@example.com"