.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

To demonstrate the use of encrypted data bags on a node, we'll start by copying the ``secret_key`` file to an example node using ``scp`` and moving it to ``/etc/chef/encrypted_data_bag_secret``:

.. code-block:: bash

   scp ./secret_key $MY_NODE_IP:~/
   ssh $MY_NODE_IP
   sudo mv ./secret_key /etc/chef/encrypted_data_bag_secret

The ``knife bootstrap`` sub-command supports the ``encrypted_data_bag_secret`` setting in |knife rb|. You will want to add this line:

.. code-block:: ruby

   encrypted_data_bag_secret '/path/to/your/data_bag_key'

And change ``/path/to/your/data_bag_key`` to the location of where the data bag key is located. When you run knife bootstrap afterwards it automatically adds this line to the |client rb| for the node you are bootstrapping and copies the key over.

Next, we'll create a recipe that will log the decrypted values for demonstration purposes (if these were real secrets, you would want to avoid logging them). Use |knife| and run the following:

.. code-block:: bash

   $ knife cookbook create edb_demo

Then, edit ``cookbooks/edb_demo/recipes/default.rb`` so that it contains the following:

.. code-block:: ruby

   # cookbooks/edb_demo/recipes/default.rb
   passwords = Chef::EncryptedDataBagItem.load("prod", "passwords")
   mysql = passwords["mysql"]
   Chef::Log.info("The mysql password is: '#{mysql}'")

Finally, upload the cookbook and run |chef client| on the node. You should see something like this:

.. code-block:: bash

   $ knife cookbook upload edb_demo
   # output clipped
   knife ssh name:i-8a436fe5 -a ec2.public_hostname 'sudo chef-client'
   INFO: *** Chef 0.10.0 ***
   INFO: Run List is [recipe[edb_demo]]
   INFO: Run List expands to [edb_demo]
   INFO: Starting Chef Run for i-8a436fe5
   INFO: Loading cookbooks [edb_demo]
   INFO: The mysql password is: 'open-sesame-123'
   INFO: Chef Run complete in 3.122228 seconds
   INFO: Running report handlers
   INFO: Report handlers complete

As you can see, the recipe was able to decrypt the values in the encrypted data bag. It did so by using the shared secret located in the default location of ``/etc/chef/encrypted_data_bag_secret``.