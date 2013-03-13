.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The authentication process ensures that requests to the |chef server| are made only by authorized users. |chef| uses public key encryption for all server types: |chef hosted|, |chef private|, and the open source |chef server|. When a node and/or a workstation is configured to run |chef|, both public and private keys are created. The public key is stored on the |chef server|, while the private key is returned to the user for safe keeping. (The private key is a .pem file located in the .chef directory or in /etc/chef.) The following executables use the |api chef server| when communicating with the |chef server|:

* |chef client|
* |knife|
* |chef validator| (only during the first |chef| run on a node)

Each request to the |chef server| from those executables encrypts a special group of HTTP headers along with the private key. The |chef server| then uses the public key to decrypt the headers and verify the contents.





DEBUG

In some cases, the |chef client| may receive a 401 response to the authentication request and a 403 response to an authorization request. An authentication error error may look like the following:

.. code-block:: bash

   [Wed, 05 Oct 2011 15:43:34 -0700] INFO: HTTP Request Returned 401 
   Unauthorized: Failed to authenticate as node_name. Ensure that your node_name and client key are correct.

To debug authentication problems, the first piece of information to determine is the API client that chef-client is attempting to authenticate as. You can usually see this in the log messages emitted by chef-client. For instance if you turn on debug logging (chef-client -l debug) you will see a line such as:

.. code-block:: bash

   [Wed, 05 Oct 2011 22:05:35 +0000] DEBUG: Signing the request as SOMENODENAMEHERE

If the authentication is happening with your validator client, the problem is most likely with your validation key.

If the authentication is happening with the nodes API client, there are a number of common causes.

* Your client.pem file is incorrect. This can be fixed by deleting client.pem and re-running chef-client. When chef-client runs, it will register the API client and generate the correct key.

* You are trying to authenticate with a node_name that is different from the one you used on your first chef-client run. This can happen for a number of reasons. For example, if your client.rb file does not specify your node name and you have recently changed the systems hostname. You can fix this by explicitly setting the node name in the client.rb file or with chef-client's -N option to match the name originally used to register. Alternatively, you can re-register using the method described above.

* Your system clock has drifted from the actual time by more than 15 minutes. This can be fixed by syncing your clock with an NTP server.

