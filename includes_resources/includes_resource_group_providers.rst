.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following providers are available. Use the short name to use the provider in a recipe:

.. list-table::
   :widths: 150 80 320
   :header-rows: 1

   * - Long name
     - Short name
     - Notes
   * - ``Chef::Provider::Group::Dscl``
     - 
     - This is the default provider for the |mac os x| platform.
   * - ``Chef::Provider::Group::Gpasswd``
     - 
     - This is the default provider for all platforms except |mac os x|, |freebsd|, |solaris|, and |windows|, which have their own dedicated providers.
   * - ``Chef::Provider::Group::Pw``
     - 
     - This is the default provider for the |freebsd| platform.
   * - ``Chef::Provider::Group::Usermod``
     - 
     - This is the default provider for the |solaris| platform.
   * - ``Chef::Provider::Group::Windows``
     - 
     - This is the default provider for the |windows| platform.
