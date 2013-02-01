.. This is an included how-to. 

.. To find users in an organization:

.. code-block:: ruby

   orgmapper:0 > OrganizationUser.users_for_organization(ORGS['ORGNAME']).collect do |orguser|
     Mixlib::Authorization::Models::User.get(orguser).username
   end

where ``ORGNAME`` is the name of the organization.
