.. This is an included how-to. 

.. To add a user to an organization's admin group:

.. code-block:: ruby

   orgmapper:0> ORGS['ORGNAME'].add_user_to_group('USERNAME', 'admins')

where ``ORGNAME`` is the name of the organization and ``USERNAME`` is the name of the user.
