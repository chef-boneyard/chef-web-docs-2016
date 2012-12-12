.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The **Management Console** allows users to create, read, edit, and delete API clients.

On Hosted Chef, "API Clients" are entities that are similar to Users, except that clients are always scoped to your organization and only have access to the Hosted Chef API. API Clients are used by chef-client to authenticate when connecting to Hosted Chef. Typically, there is one client for each node under management.

When you first sign up, a "validator" client is created for your organization named ORGANIZATION-validator.pem. This "validator" client can be used to create new clients for your organization via the Hosted Chef API. If the "validator" client is deleted for any reason, you will need to recreate it to authenticate new nodes. Be careful not to let this happen, if it does, following directions on the Common Errors page will to recreate it.

Anyone in possession of a client's private key can do anything on your Hosted Chef account that the client is authorized to do, so be sure to protect you clients' private keys. These keys are typically created the first time a given chef-client connects to Hosted Chef, and stored locally on the node.

You can also manage clients with the command line tool Knife.

Add
=====================================================
New clients are typically created by chef-client when it first connects to Hosted Chef, so there is no need in that case to manually create a new client.

If you need to manually create one, you can follow these steps:

1. Log in to the Hosted Chef Management Console and select an organization to use if you are associated with multiple organizations.

2. Select the Clients tab

3. Click on the Create sub-menu

   .. image:: ../../images/step_manage_server_hosted_client_add_1.jpg

4. Enter a name for the client and press Create Client. A link to your client's private key will be shown. Opscode does not store your private keys, so be sure to download and save the private key. You can generate a new private key if you lose it, however.

   .. image:: ../../images/step_manage_server_hosted_client_add_2.jpg

Note: You need create permissions on the global clients level to create a client.

Delete
=====================================================
In order to delete a client:

1. Log in to the Hosted Chef Management Console and select an organization to use if you are associated with multiple organizations.

2. Select the Clients tab

3. Click on the delete link next to the client you want to delete.

Do not delete the validator client, which will be named ORGANIZATION-validator or you will be unable to authenticate new nodes until you recreate the validator key.

   .. image:: ../../images/step_manage_server_hosted_client_delete.jpg

This will prevent that client from authenticating to Hosted Chef.

Note: You need delete permissions on the client to delete it.

List
=====================================================
In order to see a list of the clients in the organization:

1. Log in to the Hosted Chef Management Console and select an organization to use if you are associated with multiple organizations.

2. Select the Clients tab and you will see a list similar to this:

   .. image:: ../../images/step_manage_server_hosted_client_list.jpg

Note: You need list permissions on the global clients level to list the clients.



Regenerate Private Key
=====================================================
Regenerating a client's private key invalidates the client's old private key and replaces it with a new one. Regenerating the key will be useful if you have lost the client's private key, if the client's private key has been exposed to someone you don't want to have access to your Hosted Chef account, or if you wish to regularly rotate keys for security purposes.

from the Management Console
-----------------------------------------------------
In order to regenerate a client's private key:

1. Log in to the Hosted Chef Management Console and select an organization to use if you are associated with multiple organizations.

2. Select the Clients tab

3. Click on the regenerate private key link next to the client whose key you want to regenerate:

   .. image:: ../../images/step_manage_server_hosted_client_private_key_regenerate_hosted.jpg

Note: You need update permissions on the client to recreate this key.

Your new private key will start downloading. Save this key! There is no way for Opscode to recover the key if you lose it, though you can generate a new key again.

with Knife
-----------------------------------------------------
To regenerate a client's key with knife, use `knife client reregister CLIENT`. This is explained further in the API Clients article.








