.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following providers are available. Use the short name to use the provider in a recipe:

.. list-table::
   :widths: 150 80 320
   :header-rows: 1

   * - Long name
     - Short name
     - Notes
   * - ``Chef::Provider::Group::Aix``
     - group
     - This is the default provider for the |ibm aix| platform.
   * - ``Chef::Provider::Group::Dscl``
     - group
     - This is the default provider for the |mac os x| platform.
   * - ``Chef::Provider::Group::Gpasswd``
     - group
     - This is the default provider for all platforms except |mac os x|, |freebsd|, |solaris|, and |windows|, which have their own dedicated providers.
   * - ``Chef::Provider::Group::Groupadd``
     - group
     - This is the default provider for the |groupadd| command.
   * - ``Chef::Provider::Group::Groupmod``
     - group
     - This is the default provider for the |groupmod| command.
   * - ``Chef::Provider::Group::Pw``
     - group
     - This is the default provider for the |freebsd| platform.
   * - ``Chef::Provider::Group::Suse``
     - group
     - This is the default provider for the xxxxx platform.
   * - ``Chef::Provider::Group::Usermod``
     - group
     - This is the default provider for the |solaris| platform.
   * - ``Chef::Provider::Group::Windows``
     - group
     - This is the default provider for the |windows| platform.
