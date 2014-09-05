=====================================================
dsc_script
=====================================================

.. warning:: This page discusses functionality that will be added to an upcoming release of the |chef client|.

.. include:: ../../includes_resources_common/includes_resources_common_generic.rst

.. include:: ../../includes_resources_common/includes_resources_common_powershell.rst

.. include:: ../../includes_resources_common/includes_resources_common_powershell_dsc.rst

.. include:: ../../includes_resources/includes_resource_dsc_script.rst

.. note:: |windows powershell| 4.0 is required for using the |resource dsc_script| resource with |chef|.

.. note:: The |windows remote management| service must be enabled. (Use ``winrm quickconfig`` to enable the service.)

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_dsc_script_syntax.rst

Actions
=====================================================
.. include:: ../../includes_resources/includes_resource_dsc_script_actions.rst

Attributes
=====================================================
.. include:: ../../includes_resources/includes_resource_dsc_script_attributes.rst

Examples
=====================================================

**Simple usage of DSC embedded in the Chef dsc_script resource**

.. code-block:: ruby

   dsc_script 'emacs' do
     code <<-EOH
     Environment 'texteditor'
     {
       Name = 'EDITOR'
       Value = 'c:\\emacs\\bin\\emacs.exe'
     }
     EOH
   end

The same DSC content could be supplied by specifying a file that contains it within a PowerShell Configuration language element using the command attribute to specify a path to the DSC script file. When using command, you mest either set the configuration_name attribute to the value of the argument supplied to Configuration in the DSC script, or just set the dsc_script resource's name attribute to that value, like this:

.. code-block:: ruby

   dsc_script `DefaultEditor` do
     command 'c:\dsc_scripts\emacs.ps1'
   end

which assumes that c:\dsc_scripts\emacs.ps1 contains a configuration called DefaultEditor as in the PowerShell DSC script below:

.. code-block:: javascript

   Configuration 'DefaultEditor'  
   {
     Environment 'texteditor'
       {
         Name = 'EDITOR'
         Value = 'c:\emacs\bin\emacs.exe'
       }
   }

**Using the configuration_name attribute**

The configuration_name attribute may be used to allow the name attribute to be set to something other than the configuration in a DSC script. In this example, configuration_name is used to select one of the configurations in the DSC script:

.. code-block:: ruby

   dsc_script `EDITOR` do
     configuration_name 'vi'
     command 'c:\dsc_scripts\editors.ps1'
   end

The content of c:\dsc_scripts\editors.ps1 in this case was:

.. code-block:: javascript

   Configuration 'emacs'  
     {
       Environment 'TextEditor'
       {
         Name = 'EDITOR'
         Value = 'c:\emacs\bin\emacs.exe'
       }
   }
   
   Configuration 'vi'   
   {
       Environment 'TextEditor'
       {
         Name = 'EDITOR'
         Value = 'c:\vim\bin\vim.exe'
       }
   }

**Passing parameters to DSC configurations**

If a DSC script specified with the command attribute has a configuration that takes parameters, those may be passed using the flags attribute:

.. code-block:: ruby

   dsc_script `DefaultEditor` do
     flags { :EditorChoice => 'emacs', :EditorFlags => '--maximized' }
     command 'c:\dsc_scripts\editors.ps1'
   end

This could be used with the following PowerShell DSC script content for c:\dsc_scripts\editors.ps1

.. code-block:: javascript

   $choices = @{'emacs' = 'c:\emacs\bin\emacs';'vi' = 'c:\vim\vim.exe';'powershell' = 'powershell_ise.exe'}
     Configuration 'DefaultEditor' 
       {
         [CmdletBinding()]
         param
           (
             $EditorChoice,
             $EditorFlags = ''
           )
         Environment 'TextEditor'
         {
           Name = 'EDITOR'
           Value =  "$($choices[$EditorChoice]) $EditorFlags"
         }
       }


**Using configuration data**

DSC's configuration data feature allows further customization of DSC scripts. In some cases, such as setting behavior for Powershell credential data types, its use in a DSC configuration is required. The configuration data supplied MUST contain an entry for a node name of localhost to be applied by dsc_script.

Configuration data may be supplied directly through the configuration_data attribute of dsc_script or the configuration_data_script or by specifying the path to a .psd1 with the same contents that could be supplied to configuration_data.

The following example demonstrates DSC's User resource using DSC configuration data to create a user using a plaintext specification of a password:

.. code-block:: ruby

   dsc_script 'BackupUser' do
     configuration_data <<-EOH
       @{
        AllNodes = @(
             @{
             NodeName = "localhost";
             PSDscAllowPlainTextPassword = $true
             })
        }
     EOH
     code <<-EOH
       $user = 'backup'
       $password = ConvertTo-SecureString -String "YourPass$(random)" -AsPlainText -Force
       $cred = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $user, $password
       
      User $user
        {
          UserName = $user
          Password = $cred
          Description = 'Backup operator'
          Ensure = "Present"
          Disabled = $false
          PasswordNeverExpires = $true
          PasswordChangeRequired = $false
        }
      EOH
   
     configuration_data <<-EOH
       @{
         AllNodes = @(
             @{
             NodeName = "localhost";
             PSDscAllowPlainTextPassword = $true
             })
         }
       EOH
   end


**Using dsc_script with other Chef resources**

Like any other resource in Chef, dsc_script can be used in concert with other Chef resources -- here's an example that downloads a file using Chef's remote_file resource and uncompresses it using DSC's Archive resource via dsc_script into a target directory:

.. code-block:: ruby

   remote_file "#{Chef::Config[:file_cache_path]}\\DSCResourceKit620082014.zip" do
     source 'http://gallery.technet.microsoft.com/DSC-Resource-Kit-All-c449312d/file/124481/1/DSC%20Resource%20Kit%20Wave%206%2008282014.zip'
   end
   
   dsc_script 'get-dsc-resource-kit' do
     code <<-EOH
     Archive reskit
       {
         ensure = 'Present'
         path = "#{Chef::Config[:file_cache_path]}\\DSCResourceKit620082014.zip"
         destination = "#{ENV['PROGRAMW6432']}\\WindowsPowerShell\\Modules"
       }
     EOH
   end



