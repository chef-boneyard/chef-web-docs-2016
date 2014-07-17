=====================================================
dsc_mof
=====================================================

.. warning:: This page discusses functionality that will be added to the https://github.com/opscode-cookbooks/dsc cookbook. This functionality is planned to be included in a future update of the chef-client. For now, please download the cookbook and try this new feature out. Please provide feedback about this resource to that cookbook repository.

.. include:: ../../includes_resources_common/includes_resources_common_generic.rst

.. include:: ../../includes_resources/includes_resource_dsc_mof.rst

.. note:: |windows powershell| 4.0 is required for using the |resource dsc_mof| resource with |chef|.

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_dsc_mof_syntax.rst

Attributes
=====================================================
.. include:: ../../includes_resources/includes_resource_dsc_mof_attributes.rst

Examples
=====================================================

**Add a user to Active Directory**

.. code-block:: ruby

   dsc_mof "create user" do
     resource_name :cADUser
	 property :ensure, "Present"
     property :domainname "ad.getchef.com"
	 property :username, "grantmc"
     property :password, "snakeplisskin"
	 property :domainadministratorcredential, "credential"
   end