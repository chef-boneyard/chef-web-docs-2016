.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use the following provider when using the |resource package| resource in a recipe when the |lwrp homebrew tap| lightweight resource:

.. list-table::
   :widths: 130 80 40 250
   :header-rows: 1

   * - Long name
     - Short name
     - Default?
     - Notes
   * - ``Chef::Provider::WindowsFeature::DISM``
     - 
     - 
     - Default. A provider that uses |microsoft dism| to manage server roles, role services, and features. For more information, see: http://technet.microsoft.com/en-us/library/dd744256(WS.10).aspx.
   * - ``Chef::Provider::WindowsFeature::ServerManagerCmd``
     - 
     - 
     - A provider that uses |microsoft servermanagercmd| to manage server roles, role services, and features. For more information, see: http://technet.microsoft.com/en-us/library/ee344834(v=ws.10).aspx.
