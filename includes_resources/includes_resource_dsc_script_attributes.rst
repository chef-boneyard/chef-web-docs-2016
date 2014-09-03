.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``code``
     - The code for the |windows powershell_dsc| configuration script. This attribute may not be used in the same recipe as the ``command`` attribute.
   * - ``command``
     - The path to a file that contains the |windows powershell_dsc| configuration script. This attribute may not be used in the same recipe as the ``code`` attribute.
   * - ``configuration_data``
     - This attribute may not be used in the same recipe as the ``configuration_data_script`` attribute.
   * - ``configuration_data_script``
     - This attribute may not be used in the same recipe as the ``configuration_data`` attribute.
   * - ``configuration_name``
     - The name of a valid PowerShell cmdlet. The name may only contain letter (a-z, A-Z), number (0-9), and underscore (_) characters and should start with a letter. The name may not be null or empty. This attribute may not be used in the same recipe as the ``code`` attribute.
   * - ``flags``
     - 
   * - ``cwd``
     - 
   * - ``environment``
     - 
   * - ``timeout``
     - 


