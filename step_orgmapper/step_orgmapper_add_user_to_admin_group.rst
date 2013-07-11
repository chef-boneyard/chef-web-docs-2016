.. This is an included how-to.

.. To add a user to an organization's admin group:

.. code-block:: ruby

   orgmapper:0> g = ORGS['ORGNAME'].groups['admins']
   orgmapper:0> g.add_actor(USERS['USERNAME'])
   orgmapper:0> g.save

where ``ORGNAME`` is the name of the organization and ``USERNAME`` is the name of the user.
