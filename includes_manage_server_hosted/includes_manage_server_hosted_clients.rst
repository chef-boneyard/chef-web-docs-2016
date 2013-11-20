.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The **Management Console** allows users to create, read, edit, and delete API clients.
 
On Hosted Chef, "API Clients" are entities that are similar to Users, except that clients are always scoped to your organization and only have access to the Hosted Chef API. API Clients are used by chef-client to authenticate when connecting to Hosted Chef. Typically, there is one client for each node under management.

When you first sign up, a "validator" client is created for your organization named ORGANIZATION-validator.pem. This "validator" client can be used to create new clients for your organization via the Hosted Chef API. If the "validator" client is deleted for any reason, you will need to recreate it to authenticate new nodes. Be careful not to let this happen, if it does, following directions on the `Common Errors <https://wiki.opscode.com/display/chef/Common+Errors#CommonErrors-deleted-validator>`_ page will to recreate it.
s
Anyone in possession of a client's private key can do anything on your Hosted Chef account that the client is authorized to do, so be sure to protect you clients' private keys. These keys are typically created the first time a given chef-client connects to Hosted Chef, and stored locally on the node.

You can also manage clients with the command line tool Knife.
