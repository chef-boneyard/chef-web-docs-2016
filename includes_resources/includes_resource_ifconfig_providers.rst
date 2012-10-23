.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use the following provider to use the |resource ifconfig| resource in a recipe:

.. list-table::
   :widths: 130 80 40 250
   :header-rows: 1

   * - Long name
     - Short name
     - Default?
     - Notes
   * - ``Chef::Provider::Ifconfig``
     - ``ifconfig``
     - Yes
     - This is the default provider for all platforms. Currently, this provider only writes out a start-up configuration file for the interface on Red Hat-based platforms (it writes to /etc/sysconfig/network-scripts/ifcfg-#{device_name}). 
