.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following providers are available. Use the short name to call the provider from a recipe:

.. list-table::
   :widths: 150 80 320
   :header-rows: 1

   * - Long name
     - Short name
     - Notes
   * - ``Chef::Provider::Service::Init``
     - ``service``
     - When this short name is used, |chef| will determine the correct provider during the |chef| run.
   * - ``Chef::Provider::Service::Init::Debian``
     - ``service``
     - The provider that is used with the |debian| and |ubuntu| platforms.
   * - ``Chef::Provider::Service::Upstart``
     - ``service``
     - The provider that is used with the |upstart| platform.
   * - ``Chef::Provider::Service::Init::Freebsd``
     - ``service``
     - The provider that is used with the |freebsd| platform.
   * - ``Chef::Provider::Service::Init::Gentoo``
     - ``service``
     - The provider that is used with the |gentoo| platform.
   * - ``Chef::Provider::Service::Init::Redhat``
     - ``service``
     - The provider that is used with the |redhat| and |centos| platforms.
   * - ``Chef::Provider::Service::Solaris``
     - ``service``
     - The provider that is used with the |solaris| platform.
   * - ``Chef::Provider::Service::Windows``
     - ``service``
     - The provider that is used with the |windows| platform.
   * - ``Chef::Provider::Service::Macosx``
     - ``service``
     - The provider that is used with the |mac os x| platform.
