=====================================================
Errors
=====================================================

The following sections describe troubleshooting some common errors and problems.

401 Unauthorized
=====================================================
There are multiple causes of the Chef 401 "Unathorized" error, so please use the sections below to find the error message that most closely matches your output. If you are unable to find a matching error, or if the provided steps are unhelpful, please `file a help ticket <http://www.opscode.com/support/tickets>`_.

Failed to authenticate as ORGANIZATION-validator
-----------------------------------------------------
If you're receiving an error like the following it most likely means you'll need to regenerate the |organization pem| file:

.. code-block:: bash

   INFO: Client key /etc/chef/client.pem is not present - registering
   INFO: HTTP Request Returned 401 Unauthorized: Failed to authenticate as ORGANIZATION-validator. Ensure that your node_name and client key are correct.
   FATAL: Stacktrace dumped to c:/chef/cache/chef-stacktrace.out
   FATAL: Net::HTTPServerException: 401 "Unauthorized"

**Troubleshooting Steps**

#. Check if the |organization pem| file exists in one of the following locations::
   
      ~/.chef
      ~/projects/current_project/.chef
      /etc/chef
   
   If one is present, verify that it has the correct read permissions.

#. If there's no |organization pem| file, regenerate it. 
   
   Recreate this file by going to the |webui| web user interface and selecting |webui admin_orgs| in the upper right side of the screen.
   
   You can then select |webui admin_orgs_reset_validation_key| next to the organization for which the key is to be reset.

Failed to authenticate to https://api.opscode.com
-----------------------------------------------------
If you're getting an error like:

.. code-block:: bash

   ERROR: Failed to authenticate to https://api.opscode.com/organizations/ORGANIZATION as USERNAME with key /path/to/USERNAME.pem
   Response:  Failed to authenticate as USERNAME. Ensure that your node_name and client key are correct.

when issuing |knife| commands, it means the local |client rb| file is unable to authenticate to the |chef server|.

**Troubleshooting Steps**

#. Verify you have the correct values in your |knife rb| file, especially for the ``node_name`` and ``client_key`` settings.

#. Check if the file referenced in the ``client_key`` setting (usually |user pem|) exists. Some common locations include::
   
      ~/.chef
      ~/projects/current_project/.chef
      /etc/chef
   
   If one is present, verify that it has the correct read permissions.

#. If there's no file, regenerate it.

Organization not found 
-----------------------------------------------------
If you see this error when trying to recreate the |organization pem|, it's possible that the client itself was deleted. You will need to create the validator key again by using the following directions. In these directions, ORGANIZATION should be replaced by your organization's short name.

#. Login to the |webui|.
#. Click on the |webui policy| tab.
#. Click on the |webui policy_client| link on the left.
#. Click on the |webui policy_client_create| link on the left.
#. Enter |organization pem| as the name, substituting your organization's name, check the |webui button_validation_client| box and click on the |webui button_create_client| button.
#. Save a copy of the private key to |organization pem| in your workstation's .chef directory - this will be your organization's new validator key.

Synchronize the clock on your host
-----------------------------------------------------
If you're getting an error like this:

.. code-block:: bash

   INFO: Client key /etc/chef/client.pem is not present - registering
   INFO: HTTP Request Returned 401 Unauthorized: Failed to authenticate as ORGANIZATION-validator. Synchronize the clock on your host.
   FATAL: Stacktrace dumped to /var/chef/cache/chef-stacktrace.out
   FATAL: Net::HTTPServerException: 401 "Unauthorized"

it means that your system clock has drifted from the actual time by more than 15 minutes. This can be fixed by synchronizing your clock with an NTP server.

All other 401 errors
-----------------------------------------------------
The general ``Net::HTTPServerException: 401 "Unauthorized"`` error will usually occur for one of two reasons.

**Troubleshooting Steps**

#. Make sure your ``client.pem`` is valid.
   
   This can be fixed by deleting ``client.pem`` in ``/etc/chef`` and deleting the client and node with knife.
   
   On a management station:

   .. code-block:: bash

      # Dump the current node to JSON
      $ knife node show NODE_NAME -fJ > NODE_NAME.json
      
      $ knife client delete FQDN -y
      $ knife node delete FQDN -y

   On an affected node (as root):
   
   .. code-block:: bash
   
      $ rm /etc/chef/client.pem
      $ chef-client
   
   When the |chef client| runs, it will register the API client and generate the correct key.
   
   After successfully running the |chef client| on the node, reload the ``run_list`` and node attributes:
   
   .. code-block:: bash
   
      $ knife node from file NODE_NAME.json

#. Make sure to use the same ``node_name`` as the initial |chef client| run.
   
   This can happen for a number of reasons. For example, if the |client rb| file does not specify the correct node name and the system's hostname has changed.
   
   Running ``chef-client -l debug`` will identify the node name being used by the |chef client| for authentication attempts:
   
   .. code-block:: bash
   
      DEBUG: Signing the request as SOME_NODE_NAME
   
   This can be fixed this by explicitly setting ``node_name`` in the |client rb| file to match the name originally used to register.
   
   .. code-block:: ruby
   
   node_node 'mynode.mycompany.com'
   
   Alternatively, re-register the node using the method described previously.

403 Forbidden
=====================================================
If you're seeing output like this:

.. code-block:: bash

   FATAL: Stacktrace dumped to /var/chef/cache/chef-stacktrace.out
   FATAL: Net::HTTPServerException: 403 "Forbidden"

this is an indication that there is an issue with permissions on the |chef server|.

**Troubleshooting Steps**

In |chef|, there are two different types of permissions issues, object specific and global permissions. To figure out which type of permission issue you're experiencing, run the |chef client| again using the ``-l debug`` options to see debugging output.

You should see something like this up the stack trace:

.. code-block:: bash

   DEBUG: Sending HTTP Request to https://api.opscode.com/organizations/ORGNAME/nodes
   ERROR: Running exception handlers

The URL will help identify the type of permission issue. If the URL is an index action (i.e. operating on a collection of resources, like ``/nodes``) then this is a global permission. If the URL is operating on an instance of a collection (i.e. ``/nodes/NODENAME``) then this is an object permission issue.

To fix the global permissions:

#. Login to the |webui| and click on the failing object type (most likely |webui nodes|).

#. Click on the |webui tab_permissions| sub-tab. Which permission it needs, depends on which request that failed::

      GET - Under the group section, make sure it has the LIST permission checked
      POST - Under the group section, make sure it has the CREATE permission checked

#. Check the checkboxes needed and save the updates.

To fix object permissions:

#. Login to the |webui| and click on the failing object type (most likely |webui nodes|).

#. Click on the object in the list that is causing the error.

#. Click on the |webui tab_permissions| sub-tab. Which permission it needs, depends on the type of request that failed::

      GET - Make sure it has the READ permission checked
      PUT - Make sure it has the UPDATE permission checked
      DELETE - Make sure it has the DELETE permission checked

#. Check the checkboxes needed and save the updates.

Workflow Problems
=====================================================
In working with |chef|, you'll most likely encounter issues in your regular workflow. This page is a collection of common errors our users have reported while working with |chef|. Please use the accordion below to select the error message that most closely matches your output. If you are unable to find a matching error, or if the provided steps are unhelpful, please `file a help ticket <http://www.opscode.com/support/tickets>`_.

No such file or directory
-----------------------------------------------------
If you're seeing an error like:

.. code-block:: bash

   Client key /etc/chef/client.pem is notresent - registering
   WARN: Failed to read the private key /etc/che/validation.pem: #<Errno::ENOENT: No such file or directory - /etc/chef/validaton.pem>
   FATAL: Stacktrace dumped to /etc/chef/cache/chef-stacktrace.out
   FATAL: Chef::Exceptions::PrivateKeyMissing: I cannot read /etc/chef/validation.pem, which you told me to use to sign requests

it means that the |chef client| could not find your validation.pem.

**Troubleshooting Steps**

#. Make sure your ``validation.pem`` or ``ORGANIZATION-validator.pem`` is downloaded and accessible by the current user.

#. Make sure your |client rb| points to the location of your validator pem.

Commit or stash your changes
-----------------------------------------------------
This isn't really an error, but can be confusing to new users. When you try to install a cookbook with changes that have not been committed to git you will get this error:

.. code-block:: bash

   Installing getting-started to /home/jes/chef-repo/.chef/../cookbooks
   ERROR: You have uncommitted changes to your cookbook repo:
    M cookbooks/getting-started/recipes/default.rb
    ?? .chef/
    ?? log
   Commit or stash your changes before importing cookbooks

**Troubleshooting Steps**

Solve this by committing the cookbook changes. For example, the following command would commit all new changes with the message "updates".

.. code-block:: bash

   $ git commit -am "Updating so I can install a site cookbook"

Re-run the ``knife cookbook site install`` command again to install the community cookbook.

Cannot find config file
-----------------------------------------------------
If you're seeing an error like:

.. code-block:: bash

   WARN: *****************************************
   WARN: Can not find config file: /etc/chef/client.rb, using defaults.
   WARN: No such file or directory - /etc/chef/client.rb
   # ... output truncated ... #
   FATAL: Chef::Exceptions::PrivateKeyMissing: I cannot read /etc/chef/validation.pem, which you told me to use to sign requests!

**Troubleshooting Steps**

Work around this issue by supplying the full path to the |client rb| file:

.. code-block:: bash

   $ chef-client -c /etc/chef/client.rb