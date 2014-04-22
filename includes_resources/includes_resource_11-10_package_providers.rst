.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following providers are available. Use the short name to call the provider from a recipe:

.. list-table::
   :widths: 150 80 320
   :header-rows: 1

   * - Long name
     - Short name
     - Notes
   * - ``Chef::Provider::Package``
     - ``package``
     - When this short name is used, the |chef client| will attempt to determine the correct provider during the |chef client| run.
   * - ``Chef::Provider::Package::Apt``
     - ``apt_package``
     - 
   * - ``Chef::Provider::Package::Dpkg``
     - ``dpkg_package``
     - Can be used with the ``options`` attribute.
   * - ``Chef::Provider::Package::EasyInstall``
     - ``easy_install_package``
     - 
   * - ``Chef::Provider::Package::Freebsd``
     - ``freebsd_package``
     - 
   * - ``Chef::Provider::Package::Ips``
     - ``ips_package``
     - 
   * - ``Chef::Provider::Package::Macports``
     - ``macports_package``
     - 
   * - ``Chef::Provider::Package::Pacman``
     - ``pacman_package``
     - 
   * - ``Chef::Provider::Package::Portage``
     - ``portage_package``
     - Can be used with the ``options`` attribute.
   * - ``Chef::Provider::Package::Rpm``
     - ``rpm_package``
     - Can be used with the ``options`` attribute.
   * - ``Chef::Provider::Package::Rubygems``
     - ``gem_package``
     - Can be used with the ``options`` attribute.
   * - ``Chef::Provider::Package::Rubygems``
     - ``chef_gem``
     - Can be used with the ``options`` attribute.
   * - ``Chef::Provider::Package::Smartos``
     - ``smartos_package``
     - 
   * - ``Chef::Provider::Package::Solaris``
     - ``solaris_package``
     - 
   * - ``Chef::Provider::Package::Yum``
     - ``yum_package``
     - 
   * - ``Chef::Provider::Package::Zypper``
     - ``package``
     - The provider that is used with the |suse| platform.
