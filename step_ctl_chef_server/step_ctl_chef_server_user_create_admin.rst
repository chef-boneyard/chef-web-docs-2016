.. This is an included how-to. 


Run the following command to create an administrator:

.. code-block:: bash

   $ chef-server-ctl user-create user_name first_name last_name email password --filename FILE_NAME

An RSA private key is generated automatically. This should be saved to a safe location. The ``--filename`` option will save the RSA private key to a specified path.

For example:

.. code-block:: bash

   $ chef-server-ctl user-create stevedanno Steve Danno steved@getchef.com abc123 --filename /path/to/file.key
