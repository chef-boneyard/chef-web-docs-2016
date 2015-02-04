=====================================================
orgmapper
=====================================================

.. warning:: This documentation is about |chef private|, an older version of the |chef server|. For documentation about the current version of the |chef server|, see http://docs.getchef.com/server/.

|orgmapper| is a tool that can be used with |chef private| to provide administrative access to back-end objects. |orgmapper| can be a dangerous tool and should be used carefully. In general, anything that needs to be done around automating user creation, making permissions changes, and so on, can be done more easily using the ``knife-acl`` plugin and by using the |chef private| web interface.

Examples
=====================================================
The following examples show how to use |orgmapper|:

**Start orgmapper**

Log in to the server that is hosting the back-end. (In a |ha| configuration, this should be the current primary server in that configuration.)

.. code-block:: bash

   $ /opt/opscode/bin/orgmapper

Next, query organizations, users, and so on similar to the following examples

.. code-block:: ruby

   orgmapper:0 > pp ORGS.all

or:

.. code-block:: ruby

   orgmapper:0 > pp ORGS['ORGNAME']

or:

.. code-block:: ruby

   orgmapper:0 > pp USERS.all

or:

.. code-block:: ruby

   orgmapper:0 > pp USERS['USER']

where (in each of the previous examples) ``ORGNAME`` is the name of the organization and ``USER`` is the name of the user.

**Find users in an organization**

.. code-block:: ruby

   orgmapper:0 > OrganizationUser.users_for_organization(ORGS['ORGNAME']).collect do |orguser|
     Mixlib::Authorization::Models::User.get(orguser).username
   end

where ``ORGNAME`` is the name of the organization.

**Find organizations for a user**

.. code-block:: ruby

   orgmapper:0 > OrganizationUser.organizations_for_user(USERS['USERNAME']).collect do |orguser|
     Mixlib::Authorization::Models::Organization.get(orguser).name
   end

where ``USERNAME`` is the name of the user.

**Find a user name based on email address**

.. code-block:: ruby

   orgmapper:0 > USERS.select{|u| u.email == 'user@company.com'}

where ``user@company.com`` is the email address for the user.

**Associate a user to an organization**

Ensure that the user and organization already exist and then do something like:

.. code-block:: ruby

   orgmapper:0 > OrgMapper::Associator.associate_user(ORGS['ORGNAME'], USERS['USERNAME'])

where ``ORGNAME`` is the name of the organization and ``USERNAME`` is the name of the user.

**Add a user to organization's admin group**

.. code-block:: ruby

   orgmapper:0> g = ORGS['ORGNAME'].groups['admins']
   orgmapper:0> g.add_actor(USERS['USERNAME'])
   orgmapper:0> g.save

where ``ORGNAME`` is the name of the organization and ``USERNAME`` is the name of the user.

**Remove a user from organization's admin group**

.. code-block:: ruby

   orgmapper:0> ORGS['ORGNAME'].remove_user_from_group('USERNAME', 'admins')

**Delete a user**

.. code-block:: ruby

   orgmapper:0 > USERS.mapper.destroy(USERS['USERNAME'])

where ``USERNAME`` is replaced by the user name that will be deleted.
