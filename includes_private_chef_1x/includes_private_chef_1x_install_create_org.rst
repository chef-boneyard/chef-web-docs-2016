.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

In order to begin managing your infrastructure with |chef private|, you will need to create an Organization. Organizations are completely multi-tenant |chef| infrastructures that share nothing with other organizations on your |chef private| server.

.. image:: ../../images/private_chef_1x_click_to_create_org.png

You will then be prompted to fill in a form with two fields:

* **Organization Full Name**: Should be the name of your company or department
* **Organization Short Name**: Should be a lowercase word describing the organization---used in the Web UI and API URLs.

Once you have filled in the form, click Create Organization to create your organization.

.. image:: ../../images/private_chef_1x_create_org_button.png

Once the organization is created, you need to:

* **Download the validation key**: This key will enable you to attach clients to this |chef private| organization
* **Generate a knife configuration file**: |knife| is the command line API to |chef|, and this link will provide you with a pre-generated configuration for this organization, and customized for your |chef private| installation.

.. image:: ../../images/private_chef_1x_download_key_and_knife.png




