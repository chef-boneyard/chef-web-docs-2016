.. This is an included how-to. 


Run the following command to create an administrator:

.. code-block:: bash

   $ chef-server-ctl user-create USER_NAME FIRST_NAME LAST_NAME EMAIL 'PASSWORD' --filename FILE_NAME

An RSA private key is generated automatically. This is the user's private key and should be saved to a safe location. The ``--filename`` option will save the RSA private key to a specified path.

For example:

.. code-block:: bash

   $ chef-server-ctl user-create stevedanno Steve Danno steved@chef.io 'abc123' --filename /path/to/stevedanno.pem
