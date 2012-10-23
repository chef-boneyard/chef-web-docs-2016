.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use the following providers to use the |resource service| resource in a recipe:

.. list-table::
   :widths: 130 80 40 250
   :header-rows: 1

   * - Long name
     - Short name
     - Default?
     - Notes
   * - ``Chef::Provider::Service::Init``
     - ``service``
     - Yes
     - This is the default provider for all platforms, unless there is a specific provider for a specific platform (see the other entries in this table).
   * - ``Chef::Provider::Service::Init::Debian``
     - 
     - 
     - This is the default provider for the |debian| and |ubuntu| platforms.
   * - ``Chef::Provider::Service::Upstart``
     - 
     - 
     - This is the default provider for the |upstart| platform.
   * - ``Chef::Provider::Service::Init::Freebsd``
     - 
     - 
     - This is the default provider for the |freebsd| platform.
   * - ``Chef::Provider::Service::Init::Gentoo``
     - 
     - 
     - This is the default provider for the |gentoo| platform.
   * - ``Chef::Provider::Service::Init::Redhat``
     - 
     - 
     - This is the default provider for the |redhat| and |centos| platforms.
   * - ``Chef::Provider::Service::Solaris``
     - 
     - 
     - This is the default provider for the |solaris| platform.
   * - ``Chef::Provider::Service::Windows``
     - 
     - 
     - This is the default provider for the |windows| platform.
   * - ``Chef::Provider::Service::Macosx``
     - 
     - 
     - This is the default provider for the |mac os x| platform.
