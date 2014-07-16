.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following examples show the differences between |windows powershell_dsc| resources and |chef| resources. For |windows powershell_dsc|:

.. code-block:: powershell

   WindowsFeature hi
   {
     Ensure = "Present"
     Name = "Web-Server"
   }

and for |chef|:

.. code-block:: ruby

   dsc_resource 'hi' do
     resource_name :windowsfeature
     property :ensure, "Present"
     property :name, "Web-Server"
   end
   
The following examples show the difference between using the |windows powershell_dsc| ``Archive`` resource:

.. code-block:: powershell

   configuration 'InstallDSCReskit'
   {
     Archive 'DSCReskitFromModules'
     {
       Ensure = 'Present'
       Path = "$env:USERPROFILE/Downloads/DSC Resource Kit 03282014.zip"
       Destination = "$env:PROGRAMW6432/WindowsPowerShell/Modules"
     }
   }

and how that same resource would be authored in a |chef| recipe:

.. code-block:: ruby

   dsc_resource 'get-dsc-resource-kit' do
     resource_name :archive
     property :ensure, 'Present'
     property :path, "#{ENV['USERPROFILE']}/Downloads/DSC Resource Kit 03282014.zip"
     property :destination, "#{ENV['PROGRAMW6432']}/WindowsPowerShell/Modules"
   end


