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

**Specify DSC code directly**

|windows powershell_dsc_short| data can be specified directly in a recipe:

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


**Specify DSC code using a Windows Powershell data file**

Use the ``command`` attribute to specify the path to a |windows powershell| data file. For example, the following |windows powershell| data file defines the ``DefaultEditor``:

.. code-block:: javascript

   Configuration 'DefaultEditor'  
   {
     Environment 'texteditor'
       {
         Name = 'EDITOR'
         Value = 'c:\emacs\bin\emacs.exe'
       }
   }

Use the following recipe to specify the location of that data file:

.. code-block:: ruby

   dsc_script `DefaultEditor` do
     command 'c:\dsc_scripts\emacs.ps1'
   end


**Pass parameters to DSC configurations**

If a |windows powershell_dsc_short| script contains configuration data that takes parameters, those parameters may be passed using the ``flags`` attribute. For example, the following |windows powershell| data file takes parameters for the ``EditorChoice`` and ``EditorFlags`` settings:

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

Use the following recipe to set those parameters:

.. code-block:: ruby

   dsc_script `DefaultEditor` do
     flags { :EditorChoice => 'emacs', :EditorFlags => '--maximized' }
     command 'c:\dsc_scripts\editors.ps1'
   end


**Use custom configuration data**

Configuration data in |windows powershell_dsc_short| scripts may be customized from a recipe. For example, scripts are typically customized to set the behavior for |windows powershell| credential data types. Configuration data may be specified in one of three ways: by using the ``configuration_data`` or ``configuration_data_script`` attributes or by specifying the path to a valid |windows powershell| data file. 

The following example shows how to specify custom configuration data using the ``configuration_data`` attribute:

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

The following example shows how to specify custom configuration data using the ``configuration_name`` attribute. For example, the following |windows powershell| data file defines the ``vi`` configuration:

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

Use the following recipe to specify that configuration:

.. code-block:: ruby

   dsc_script `EDITOR` do
     configuration_name 'vi'
     command 'c:\dsc_scripts\editors.ps1'
   end


**Using DSC with other Chef resources**

The |resource dsc_script| resource can be used with other resources. The following example shows how to download a file using the |resource remote_file| resource, and then uncompress it using the |windows powershell_dsc_short| ``Archive`` resource:

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

