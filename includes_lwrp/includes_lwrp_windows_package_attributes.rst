.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``checksum``
     - The |sha256| checksum of the file. Use to prevent the |resource remote_file| resource from re-downloading a file. When the local file matches the checksum, the |chef client| will not download it.
   * - ``installer_type``
     - The type of windows installation package: ``:msi``, ``:inno``, ``:nsis``, ``:wise``, ``:installshield``, or ``:custom``. If this value is not specified, the provider will attempt to identify the installer type on its own and will use the best match. If this value cannot be properly specified, use the ``:custom`` value to pass a value to the ``installer_type`` attribute and then the ``options`` attribute to set the proper flags for a silent or quiet installation.
   * - ``options``
     - One (or more) additional options that are passed to the command.

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
       
          $ msiexec /qn /i "c:\chef\cache\msodbcsql_64.msi" IACCEPTMSODBCSQLLICENSETERMS=YES
       

   * - ``package_name``
     - The display name of the application installation package. This is the same as the ``DisplayName`` registry value in the uninstallation data that is created during package installation. The easiest way to find the correct value for ``DisplayName`` is to install a package on a machine and then search for the uninstall information under one of the following registry keys:
       
       * ``HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Uninstall``
       * ``HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Uninstall``
       * ``HKEY_LOCAL_MACHINE\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall``
       * ``HKEY_LOCAL_MACHINE\Software\Wow6464Node\Microsoft\Windows\CurrentVersion\Uninstall``
       
       Sometimes this value is identified by the uninstaller itself (in the ``Name`` column) and can be viewed while running the uninstaller.

   * - ``source``
     - A URI or a local path that specifies the source of a |windows| installer. A local file must be expressed as a URI, for example ``"file:///C:/Users/Downloads/myinstaller.msi"``.
   * - ``success_codes``
     - Use to set an array of possible successful installation return codes. This value must be an array. Default value: ``[0, 42, 127]``.
   * - ``timeout``
     - The amount of time (in seconds) to wait before timing out. Default value: ``600``.
   * - ``version``
     - The version number of a package, as indicated by the ``DisplayVersion`` property for an ``Uninstall`` registry key. If the version number equals the display version, the package will not be installed.















