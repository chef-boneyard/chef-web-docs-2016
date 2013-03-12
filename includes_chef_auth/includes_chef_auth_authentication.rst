.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


xxxxx




Authentication ensures that requests received by the Chef Server are from known API clients

The authentication process in Chef uses public key encryption, and is the same for users of the Open Source Chef Server as well as Hosted Chef and Private Chef.

When an API client is created, private and public encryption keys are created. The public key is stored on the Chef Server, while the private key is returned to the user for safe keeping. The private key is the ".pem" file that you put in your local .chef directory or in /etc/chef. Chef executables such as chef-client and knife authenticate requests to the Chef Server by encrypting a specially crafted set of HTTP Headers with the private key. The Chef Server then uses the public key to de-crypt the headers and verifies their content.

This process helps ensure that requests are only accepted from known API clients.

For technical details on how API requests are authentication see Making Authenticated API Requests. To debug common problems that can result in Authorization errors, see Common Errors.


Debugging Authentication Problems

Authentication problems are situations in which chef-client receives HTTP Status 401 in response to its request. If you are receiving HTTP Status 403, the problem is with Authorization.

An authentication error error may look like the following:
[Wed, 05 Oct 2011 15:43:34 -0700] INFO: HTTP Request Returned 401 Unauthorized: Failed to authenticate as NODENAME. Ensure that your node_name and client key are correct.

To debug authentication problems, the first piece of information to determine is the API client that chef-client is attempting to authenticate as. You can usually see this in the log messages emitted by chef-client. For instance if you turn on debug logging (chef-client -l debug) you will see a line such as:
[Wed, 05 Oct 2011 22:05:35 +0000] DEBUG: Signing the request as SOMENODENAMEHERE

If the authentication is happening with your validator client, the problem is most likely with your validation key.

If the authentication is happening with the nodes API client, there are a number of common causes.

    Your client.pem file is incorrect.
    This can be fixed by deleting client.pem and re-running chef-client. When chef-client runs, it will register the API client and generate the correct key.

    You are trying to authenticate with a node_name that is different from the one you used on your first chef-client run.
    This can happen for a number of reasons. For example, if your client.rb file does not specify your node name and you have recently changed the systems hostname. You can fix this by explicitly setting the node name in the client.rb file or with chef-client's -N option to match the name originally used to register. Alternatively, you can re-register using the method described above.

    Your system clock has drifted from the actual time by more than 15 minutes. This can be fixed by syncing your clock with an NTP server.

