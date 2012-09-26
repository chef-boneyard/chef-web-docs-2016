.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |resource mdadm| resource is used to manage |mdadm| software |raid| devices in a |linux| environment. The |resource mdadm| provider will create and assemble an array, but it will not create the config file that is used to persist the array upon reboot. If the config file is required, it must be done by specifying a template with the correct array layout, and then by using the |resource mount| provider to create a file systems table (fstab) entry.
