.. This is an included how-to. 

.. To find an organization by user name:

.. code-block:: ruby

   orgmapper:0 > OrganizationUser.organizations_for_user(USERS['USERNAME']).collect do |orguser|
     Mixlib::Authorization::Models::Organization.get(orguser).name
   end

where ``USERNAME`` is the name of the user.
