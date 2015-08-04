.. This is an included how-to. 

The |resource user| resource can be used in conjunction with a data bag to create users. For example, something like:

.. code-block:: ruby

   data_bag('users').each do |user_name|
      u = data_bag_item('users', user_name)
      user user_name do	
           username user_name
           password u['password']
           ...
      end
   end

where ``users`` is the name of the data bag, each "user" (``user_name``) is the name of a data bag item, and then for each user the |resource user| resource creates the username/password. See the `page for the user resource <http://docs.chef.io/resource_user.html>`_ for more information about additional properties that can be used to define other aspects of a user, such as ``shell``, ``system``, and so on.