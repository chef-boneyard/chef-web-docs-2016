.. This is an included how-to. 

In order to delete a client:

#. Log in to the **Management Console** and select an organization to use if you are associated with multiple organizations.

#. Select the **Clients** tab

#. Click on the delete link next to the client you want to delete. Do not delete the validator client, which will be named ORGANIZATION-validator or you will be unable to authenticate new nodes until you recreate the validator key.

   .. image:: ../../images/step_manage_server_hosted_client_delete.png

   This will prevent that client from authenticating to Hosted Chef.

Note: You need delete permissions on the client to delete it.
