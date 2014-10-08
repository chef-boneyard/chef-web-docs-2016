.. This is an included how-to. 


Run the following command to create an organization:

.. code-block:: bash

   $ chef-server-ctl org-create short_name full_organization_name --association_user user_name

|name_rules org| For example: ``chef``.

|name_rules org_full| For example: ``Chef Software, Inc.``.

The ``--association_user`` option will associate the ``user_name`` with the |webui group admins| security group on the |chef server|.

For example:

.. code-block:: bash
  
   $ chef-server-ctl org-create chef Chef Software, Inc. --association_user stevedanno

This will return an RSA private key, which is the validation key for the organization.