.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource dsc_mof| resource in a recipe is as follows:

.. code-block:: ruby

   dsc_mof "name" do
     resource_name :mof_resource_name
     property :mof_resource_property, "value"
     property ...
     ...
   end

where 

* ``dsc_mof`` tells the |chef client| that a |windows powershell_dsc_short| resource is based on a |windows powershell_mof| schema file
* ``:mof_resource_name`` is the name of the |windows powershell_dsc_short| resource, as defined by the |windows powershell_mof| schema file
* ``property`` is zero (or more) properties in the |windows powershell_dsc_short| resource, where each property is entered on a separate line, ``:mof_resource_property`` is the case-insensitive name of that property, and ``"value"`` is the value to be applied by the |chef client|

The following shows a |windows powershell_dsc_short| resource that is built using a |windows powershell_mof| schema file:

.. code-block:: powershell

   [ClassVersion("1.0.0"), FriendlyName("cADUser")] 
   class PSHOrg_cADUser : OMI_BaseResource
   {
     [write,ValueMap{"Present", "Absent"},Values{"Present", "Absent"}] string Ensure;
     [Key] string DomainName;
     [Key] string UserName;
     [write,EmbeddedInstance("MSFT_Credential")] string Password;
     [required,EmbeddedInstance("MSFT_Credential")] string DomainAdministratorCredential;
   };

and then to use this resource with |chef|:

.. code-block:: ruby

   dsc_mof "create user" do
     resource_name :cADUser
	 property :ensure, "Present"
     property :domainname "ad.getchef.com"
	 property :username, "grantmc"
     property :password, "snakeplisskin"
	 property :domainadministratorcredential, "credential"
   end