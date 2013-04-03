.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following providers are available. Use the short name to use the provider in a recipe:

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
     - The provider that is used with the |debian| and |ubuntu| platforms.
   * - ``Chef::Provider::Package::Dpkg``
     - ``dpkg_package``
     - The provider that is used with the |debian dpkg| platform. Can be used with the ``options`` attribute.
   * - ``Chef::Provider::Package::EasyInstall``
     - ``easy_install_package``
     - The provider that is used with |python| platform.
   * - ``Chef::Provider::Package::Freebsd``
     - ``freebsd_package``
     - The provider that is used with the |freebsd| platform.
   * - ``Chef::Provider::Package::Ips``
     - ``ips_package``
     - The provider that is used with the |ips| platform.
   * - ``Chef::Provider::Package::Macports``
     - ``macports_package``
     - The provider that is used with the |mac os x| platform.
   * - ``Chef::Provider::Package::Pacman``
     - ``pacman_package``
     - The provider that is used with the |pacman| platform.
   * - ``Chef::Provider::Package::Portage``
     - ``portage_package``
     - The provider that is used with the |gentoo| platform. Can be used with the ``options`` attribute.
   * - ``Chef::Provider::Package::Rpm``
     - ``rpm_package``
     - The provider that is used with the |rpm| platform. Can be used with the ``options`` attribute.
   * - ``Chef::Provider::Package::Rubygems``
     - ``gem_package``
     - The provider that is used with packages that are only included in recipes. |gem_package provider package|
   * - ``Chef::Provider::Package::Rubygems``
     - ``chef_gem``
     - The provider that is used when a |gem| is installed only for |chef| resources. |chef_gem provider package|
   * - ``Chef::Provider::Package::Smartos``
     - ``smartos_package``
     - The provider that is used with the |smartos| platform.
   * - ``Chef::Provider::Package::Solaris``
     - ``solaris_package``
     - The provider that is used with the |solaris| platform.
   * - ``Chef::Provider::Package::Yum``
     - ``yum_package``
     - The provider that is used with the |redhat| and |centos| platforms.
   * - ``Chef::Provider::Package::Zypper``
     - ``package``
     - The provider that is used with the |suse| platform.
