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
     - When this short name is used, |chef| will attempt to determine the correct provider during the |chef| run.
   * - ``Chef::Provider::Package::Apt``
     - ``apt_package``
     - |resource desc package_apt|
   * - ``Chef::Provider::Package::Dpkg``
     - ``dpkg_package``
     - |resource desc package_dpkg| Can be used with the ``options`` attribute.
   * - ``Chef::Provider::Package::EasyInstall``
     - ``easy_install_package``
     - |resource desc package_easy_install|
   * - ``Chef::Provider::Package::Freebsd``
     - ``freebsd_package``
     - |resource desc package_freebsd|
   * - ``Chef::Provider::Package::Ips``
     - ``ips_package``
     - |resource desc package_ips|
   * - ``Chef::Provider::Package::Macports``
     - ``macports_package``
     - |resource desc package_macports|
   * - ``Chef::Provider::Package::Pacman``
     - ``pacman_package``
     - |resource desc package_pacman|
   * - ``Chef::Provider::Package::Portage``
     - ``portage_package``
     - |resource desc package_portage| Can be used with the ``options`` attribute.
   * - ``Chef::Provider::Package::Rpm``
     - ``rpm_package``
     - |resource desc package_rpm| Can be used with the ``options`` attribute.
   * - ``Chef::Provider::Package::Rubygems``
     - ``gem_package``
     - |resource desc package_gem| Can be used with the ``options`` attribute.
   * - ``Chef::Provider::Package::Rubygems``
     - ``chef_gem``
     - |resource desc chef_gem| Can be used with the ``options`` attribute.
   * - ``Chef::Provider::Package::Smartos``
     - ``smartos_package``
     - |resource desc package_smartos|
   * - ``Chef::Provider::Package::Solaris``
     - ``solaris_package``
     - |resource desc package_solaris|
   * - ``Chef::Provider::Package::Yum``
     - ``yum_package``
     - |resource desc package_yum|
   * - ``Chef::Provider::Package::Zypper``
     - ``package``
     - The provider that is used with the |suse| platform.
