.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``code``
     - The code for the |windows powershell_dsc_short| configuration script. This attribute may not be used in the same recipe as the ``command`` attribute.
   * - ``command``
     - The path to a valid |windows powershell| data file that contains the |windows powershell_dsc_short| configuration script. This data file must be capable of running independently of |chef| and must generate a valid |windows powershell_dsc_short| configuration. This attribute may not be used in the same recipe as the ``code`` attribute.
   * - ``configuration_data``
     - Use to specify the configuration data for the |windows powershell_dsc_short| script. The configuration data must be `a valid Windows Powershell data file <http://msdn.microsoft.com/en-us/library/dd878337(v=vs.85).aspx>`_. This attribute may not be used in the same recipe as the ``configuration_data_script`` attribute.
   * - ``configuration_data_script``
     - The path to a valid |windows powershell| data file. The data file MUST contain a node named ``localhost``. This attribute may not be used in the same recipe as the ``configuration_data`` attribute.
   * - ``configuration_name``
     - The name of a valid |windows powershell| cmdlet. The name may only contain letter (a-z, A-Z), number (0-9), and underscore (_) characters and should start with a letter. The name may not be null or empty. This attribute may not be used in the same recipe as the ``code`` attribute.
   * - ``flags``
     - Use this to pass parameters to the |windows powershell_dsc_short| script that is specified by the ``command`` attribute. Parameters are defined as key-value pairs, where the value of each key is the parameter to pass. This attribute may not be used in the same recipe as the ``code`` attribute. Default value: ``nil``.
   * - ``cwd``
     - |cwd|
   * - ``environment``
     - |environment variables|



