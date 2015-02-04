.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Configuration of |chef private| is done using the |private chef rb| file that is located at ``/etc/opscode``. This file is written in |ruby|, which allows some flexibility around how |chef private| can be configured.

While there are a great deal of configuration options in the |private chef rb| file, the actual number of required and recommended settings is quite small. For a Standalone server configuration, configuration of the |private chef rb| file is not required because the default settings take care of everything.

For the High Availability or Tiered configurations, some of the settings will need to be modified. For example, based on the following decisions:

* The topology
* The number of servers
* The ``api_fqdn`` setting
* The ``backend_vip`` setting
* The ``notification_email`` setting

These details are covered in the Tiered and High Availability sections for more information about these settings.

