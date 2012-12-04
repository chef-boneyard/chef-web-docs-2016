.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following providers are available. Use the short name to use the provider in a recipe:

.. list-table::
   :widths: 150 80 320
   :header-rows: 1

   * - Long name
     - Short name
     - Notes
   * - ``Chef::Provider::Group``
     - group
     - When this short name is used, |chef| will determine the correct provider during the |chef| run.
   * - ``Chef::Provider::Group::Aix``
     - group
     - The provider that is used with the |ibm aix| platform.
   * - ``Chef::Provider::Group::Dscl``
     - group
     - The provider that is used with the |mac os x| platform.
   * - ``Chef::Provider::Group::Gpasswd``
     - group
     - The provider that is used with the |gpasswd| command.
   * - ``Chef::Provider::Group::Groupadd``
     - group
     - The provider that is used with the |groupadd| command.
   * - ``Chef::Provider::Group::Groupmod``
     - group
     - The provider that is used with the |groupmod| command.
   * - ``Chef::Provider::Group::Pw``
     - group
     - The provider that is used with the |freebsd| platform.
   * - ``Chef::Provider::Group::Suse``
     - group
     - The provider that is used with the |suse| platform.
   * - ``Chef::Provider::Group::Usermod``
     - group
     - The provider that is used with the |solaris| platform.
   * - ``Chef::Provider::Group::Windows``
     - group
     - The provider that is used with the |windows| platform.
