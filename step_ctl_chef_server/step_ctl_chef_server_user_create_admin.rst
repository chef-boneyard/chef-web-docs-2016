.. This is an included how-to. 


Run the following command to create an administrator:

.. code-block:: bash

   $ chef-server-ctl user-create admin user_name first_name last_name email password
   
This will return an RSA private key, which is the validation key for the user. For example:

.. code-block:: bash

   $ chef-server-ctl user-create admin stevedanno Steve Danno steved@getchef.com abc123