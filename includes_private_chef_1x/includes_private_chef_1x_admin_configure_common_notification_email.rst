.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|chef private| generates notification emails based on the results of internal monitoring and/or triggered by periodic |cron| jobs. The ``notification_email`` setting configures the email address to which these email messages will be sent.

For example, using the default value:

.. code-block:: ruby

   pc-default@opscode.com

Or:

.. code-block:: ruby

   notification_email "sysadmin@example.com"