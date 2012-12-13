.. This is an included how-to. 


The private key for the organization is also referred to as the validation key and is used to authenticate with both Knife and chef-client. Regenerating the key will be useful if you have lost the organization's private key, if the private key has been exposed to someone you don't want to have access to your Hosted Chef account, or if you wish to regularly rotate keys for security purposes.

You can also download a default |knife| config on the same page.

To download the private key and the |knife rb| file:

#. Log into the **Management Console**.

#. Click **Organizations** in the upper right of the screen, next to your username.

#. On the **Organizations** page, click the **Regenerate validation key** and the **Generate knife config** links to regenerate the private key and download a |knife| config file. If there are no associated organizations listed, please make sure your user account is associated with an organization or contact |opscode| support.

Due to a bug with some browsers, the file may be named "_regenerate_key" after downloading. You can just rename this file to ORG-validator.pem substituting the name of your organization for ORG.
If you will be using |knife|, be sure to download the user's private key as well.
