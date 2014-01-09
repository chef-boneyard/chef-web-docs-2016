.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``checksum``
     - |checksum file|
   * - ``installer_type``
     - |installer_type windows|
   * - ``options``
     - |command options|

       These options will vary depending on the installer that is used to install a package. The ``windows_package`` resource defaults to a standard executable. Use the ``installer_type`` attribute to specify a non-standard executable, and then this attribute to specify additional options that are specific to that installer type. For example, to install an MSI that requires acceptance of a EULA, a recipe may look similar to the following:

       .. code-block:: ruby
       
          windows_package "ODBC Driver X32" do
            source "http://path/to/msodbcsql_32.msi"
            action :install
            installer_type :msi
            options "IACCEPTMSODBCSQLLICENSETERMS=YES"
          end
       
       The previous example is, effectively, the same as:
       
       .. code-block:: bash
       
          $ msiexec /qn /i "c:\chef\cache\msodbcsql_64.msi
       
       but with the acceptance of the EULA included.

   * - ``package_name``
     - |name windows_package| 
   * - ``source``
     - |source windows_package|
   * - ``success_codes``
     - |success_codes| This value must be an array. Default value: ``[0, 42, 127]``.
   * - ``timeout``
     - |timeout| Default value: ``600`` (seconds).
   * - ``version``
     - |version package_windows_registry|















