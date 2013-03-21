.. This is an included how-to. 

.. To find a user based on an email address:

.. code-block:: ruby

   orgmapper:0 > USERS.select{|u| u.email == 'user@company.com'}

where ``user@company.com`` is the email address for the user.