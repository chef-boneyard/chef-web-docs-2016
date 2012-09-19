.. This is an included how-to. 

If you only want people who have access to your Chef organization to get access to this key, you could add it to an encrypted data bag instead. You could also add the repository, deploy_to, etc to the data bag if desired as well.

To add a private key to a node:

.. code-block:: ruby

   {
     "id": "app",
     "repository": "git@github.com:acctname/private-repo.git",
     "deploy_key": "-----BEGIN RSA PRIVATE KEY-----\nMIIEogIBAAKCAQEAoEN9TWqCSMvdfjke\n …truncated…",
     "deploy_to": "/tmp/private_code"
   }

Remember to convert new lines in the private key to \n when copying it to the data bag. Then you can use a file block within the recipe to add it to the node:

.. code-block:: ruby

   app = Chef::EncryptedDataBagItem.load('deploytest', 'app')
   
   file "/tmp/private_code/.ssh/id_deploy" do
     content app['deploy_key']
     owner "ubuntu"
     mode 0600
   end
