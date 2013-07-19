.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|resource desc cron|

.. warning:: The |resource cron| resource should only be used to modify an entry in a |crontab| file. Use the |resource cookbook_file| or |resource template| resources to add a |crontab| file to the |crond| directory. The |lwrp cron_d| lightweight resource (found in the |cookbook cron| cookbook) is another option for managing |crontab| files.
