.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Lightweight resources and providers are loaded from files that are saved in the following cookbook sub-directories:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Directory
     - Description
   * - ``providers/``
     - |cookbook directory providers|
   * - ``resources/``
     - |cookbook directory resources|

The naming patterns of lightweight resources and providers are determined by the name of the cookbook and by the name of the files in the ``resources/`` and ``providers/`` sub-directories. For example, if a cookbook named ``example`` was downloaded to the |chef| repository, it would be located at ``/cookbooks/example/``. If that cookbook contained two resources and two providers, the following files would be part of the ``resources/`` directory:

.. list-table::
   :widths: 120 120 120
   :header-rows: 1

   * - Files
     - Resource Name
     - Generated Class
   * - ``default.rb``
     - example
     - Chef::Resource::Example
   * - ``custom.rb``
     - example_custom
     - Chef::Resource::ExampleCustom

And the following files would be part of the ``providers/`` directory:

.. list-table::
   :widths: 120 120 120
   :header-rows: 1

   * - Files
     - Provider Name
     - Generated Class
   * - ``default.rb``
     - example
     - Chef::Provider::Example
   * - ``custom.rb``
     - custom
     - Chef::Provider::ExampleCustom
