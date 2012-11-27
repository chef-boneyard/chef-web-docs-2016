.. This is an included how-to. 

Register your existing servers with |chef hosted|. Use a custom |knife| bootstrap template to populate the nodes with the correct configuration file and validation certificate, delete the existing client certificate, and then run the |chef client| to register the node as a new API client for |chef hosted|.

**FIX**

If nodes are running a Microsoft Windows platform, you will need to use the Knife Windows Bootstrap and modify the template for the Windows platform. Be sure to remove the client.pem file, typically c:\chef\client.pem.

Note This assumes, as above, that your Hosted Chef organization has no data for these nodes. The run list will be empty. We will populate that from the backed up node data in a later step. It is important to bootstrap the nodes at this stage before restoring the backup, in order to avoid creating a permissions issue.

**FIX**

Save the following script as ``.chef/bootstrap/migration.erb`` within the |chef| repository. If the |client rb| file has been modified, this script will also need to be modified.

.. code-block:: bash

   bash -c '
   # removed installation, presumably Chef is installed on existing nodes
   
   rm /etc/chef/client.pem /etc/chef/validation.pem
   
   (
   cat <<'EOP'
   <%= validation_key %>
   EOP
   ) > /tmp/validation.pem
   awk NF /tmp/validation.pem > /etc/chef/validation.pem
   rm /tmp/validation.pem
   
   (
   cat <<'EOP'
   <%= config_content %>
   EOP
   ) > /etc/chef/client.rb
   
   chef-client
   '

Run the following bootstrap command on every node. The exact command will depend on how the actual environment is configured. For example, to run this on a node that is running |ubuntu|, enter something like:

.. code-block:: bash

   knife bootstrap TARGET_IPADDR -d migration -x ubuntu --sudo



