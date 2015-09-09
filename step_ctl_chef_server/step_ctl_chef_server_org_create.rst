.. This is an included how-to. 


Run the following command to create an organization:

.. code-block:: bash

   $ chef-server-ctl org-create short_name "full_organization_name" --association_user user_name --filename ORGANIZATION-validator.pem

|name_rules org| For example: ``4thcoffee``.

|name_rules org_full| For example: ``"fourth coffee, inc."``.

The ``--association_user`` option will associate the ``user_name`` with the |webui group admins| security group on the |chef server|.

An RSA private key is generated automatically. This is the |chef validator| key and should be saved to a safe location. The ``--filename`` option will save the RSA private key to a specified path.

For example:

.. code-block:: bash
  
   $ chef-server-ctl org-create 4thcoffee "fourth coffee, inc." --association_user stevedanno --filename /path/to/4thcoffee-validator.pem
