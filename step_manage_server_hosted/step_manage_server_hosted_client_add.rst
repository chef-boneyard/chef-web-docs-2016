.. This is an included how-to. 

New clients are typically created by chef-client when it first connects to Hosted Chef, so there is no need in that case to manually create a new client.

If you need to manually create one, you can follow these steps:

#. Log in to the Hosted Chef Management Console and select an organization to use if you are associated with multiple organizations.

#. Select the Clients tab

#. Click on the Create sub-menu

   .. image:: ../../images/step_manage_server_hosted_client_add_1.png

#. Enter a name for the client and press Create Client. A link to your client's private key will be shown. Opscode does not store your private keys, so be sure to download and save the private key. You can generate a new private key if you lose it, however.

   .. image:: ../../images/step_manage_server_hosted_client_add_2.png

Note: You need create permissions on the global clients level to create a client.

