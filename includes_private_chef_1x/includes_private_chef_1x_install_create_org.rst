.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Initial Organization Creation
In order to begin managing your infrastructure with Private Chef, you will need to create an Organization. Organizations are completely multi-tenant Chef infrastructures that share nothing with other organizations on your Private Chef server.

click_to_create_org

You will then be prompted to fill in a form with two fields:

* Organization Full Name: Should be the name of your company or department
* Organization Short Name: Should be a lowercase word describing the organization - used in the Web UI and API URLs.

Once you have filled in the form, click Create Organization to create your organization.

create_org_button

Once the organization is created, you need to:

* Download the validation key: This key will enable you to attach clients to this Private Chef organization
* Generate a knife configuration file: Knife is the command line API to Chef, and this link will provide you with a pre-generated configuration for this organization, and customized for your Private Chef installation.

download_key_and_knife



