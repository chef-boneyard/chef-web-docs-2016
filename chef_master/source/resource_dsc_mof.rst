=====================================================
dsc_mof
=====================================================

.. include:: ../../includes_resources_common/includes_resources_common_generic.rst

.. include:: ../../includes_resources/includes_resource_dsc_mof.rst

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