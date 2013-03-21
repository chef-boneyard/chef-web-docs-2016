.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


In some cases, the |chef client| may receive a 401 response to the authentication request and a 403 response to an authorization request. An authentication error error may look like the following:

.. code-block:: bash

   [Wed, 05 Oct 2011 15:43:34 -0700] INFO: HTTP Request Returned 401 
   Unauthorized: Failed to authenticate as node_name. Ensure that your node_name and client key are correct.

To debug authentication problems, determine which |chef client| is attempting to authenticate. This is often found in the log messages for that |chef client|. Debug logging can be enabled on a |chef client| using the following command:

   .. code-block:: bash
   
      $ chef-client -l debug

   When debug logging is enabled, a log entry will look like the following:

   .. code-block:: bash
   
      [Wed, 05 Oct 2011 22:05:35 +0000] DEBUG: Signing the request as SOMENODENAMEHERE

If the authentication request occurs during the initial |chef| run, the issue is most likely with the private key.

If the authentication is happening on the node, there are a number of common causes:

* The ``client.pem`` file is incorrect. This can be fixed by deleting the ``client.pem`` file and re-running the |chef client|. When the |chef client| re-runs, it will re-attempt to register with the |chef server| and generate the correct key.
* A ``node_name`` is different from the one used during the initial |chef| run. This can happen for a number of reasons. For example, if the ``client.rb`` file does not specify the correct node name and the host name has recently changed. This issue can be resolved by explicitly setting the node name in the ``client.rb`` file or by using the ``-N`` option for the |chef client| executable.
* The system clock has drifted from the actual time by more than 15 minutes. This can be fixed by syncing the clock with an |ntp| server.

