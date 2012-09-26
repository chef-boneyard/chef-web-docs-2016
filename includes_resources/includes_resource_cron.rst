.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |resource cron| resource is used to manage |cron| entries for time-based job scheduling. Attributes for a schedule will default to ``*`` of not provided, so only specify scheduling attributes that are applicable to a |cron| entry. The |resource cron| resource requires that a package be installed that provides the |crontab| program, typically |cron|.
