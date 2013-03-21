.. This is an included how-to. 

.. To remove a user from an organization's admin group:

.. code-block:: ruby

   orgmapper:0> ORGS['ORGNAME'].remove_user_from_group('USERNAME', 'admins')