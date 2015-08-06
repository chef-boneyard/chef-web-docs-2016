.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


An encryption key can also be stored in an alternate file on the nodes that need it and specify the path location to the file inside an attribute; however, ``EncryptedDataBagItem.load`` expects to see the actual secret as the third argument, rather than a path to the secret file. In this case, you can use ``EncryptedDataBagItem.load_secret`` to slurp the secret file contents and then pass them:

.. code-block:: ruby

   # inside your attribute file:
   # default[:mysql][:secretpath] = 'C:\\chef\\any_secret_filename'
   #
   # inside your recipe:
   # look for secret in file pointed to by mysql attribute :secretpath
   mysql_secret = Chef::EncryptedDataBagItem.load_secret('#{node[:mysql][:secretpath]}')
   mysql_creds = Chef::EncryptedDataBagItem.load('passwords', 'mysql', mysql_secret)
   mysql_creds['pass'] # will be decrypted
