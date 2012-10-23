.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use the following providers to use the |resource package| resource in a recipe:

.. list-table::
   :widths: 130 80 40 250
   :header-rows: 1

   * - Long name
     - Short name
     - Default?
     - Notes
   * - ``Chef::Provider::Package::Apt``
     - ``apt_package``
     - Yes
     - This is the default provider for the |debian| and |ubuntu| platforms.
   * - ``Chef::Provider::Package::Dpkg``
     - ``dpkg_package``
     - 
     - This is the default provider for the |debian dkpg| platform. Can be used with the ``options`` attribute.
   * - ``Chef::Provider::Package::EasyInstall``
     - ``easy_install_package``
     - 
     - This is the default provider for |python|.
   * - ``Chef::Provider::Package::Freebsd``
     - ``freebsd_package``
     - 
     - This is the default provider for the |freebsd| platform.
   * - ``Chef::Provider::Package::Macports``
     - ``macports_package``
     - 
     - This is the default provider for the |mac os x| platform.
   * - ``Chef::Provider::Package::Portage``
     - ``portage_package``
     - 
     - This is the default provider for the |gentoo| platform. Can be used with the ``options`` attribute.
   * - ``Chef::Provider::Package::Rpm``
     - ``rpm_package``
     - 
     - This is the default provider for the |rpm| platform. Can be used with the ``options`` attribute.
   * - ``Chef::Provider::Package::Rubygems``
     - ``gem_package``
     - 
     - This is the default provider for packages that are only included in recipes. |gem_package provider package|
   * - ``Chef::Provider::Package::Rubygems``
     - ``chef_gem``
     - 
     - This is the default provider for when installing a gem only for |chef| resources. |chef_gem provider package|
   * - ``Chef::Provider::Package::Yum``
     - ``yum_package``
     - 
     - This is the default provider for the |redhat| and |centos| platforms.
   * - ``Chef::Provider::Package::Zypper``
     - ``zypper_package``
     - 
     - This is the default provider for the |suse| platform.
