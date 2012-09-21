.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|chef| can create users on systems based on the contents of a data bag. For example, a data bag named "admins" can contain a data bag item for each of the administrators that will manage the various systems that |chef| is maintaining. A recipe can load the data bag items and then create user accounts on the target system with code similar to the following:

.. code-block:: ruby

   # Load the keys of the items in the 'admins' data bag
   admins = data_bag('admins')
   
   admins.each do |login|
     # This causes a round-trip to the server for each admin in the data bag
     admin = data_bag_item('admins', login)
     home = "/home/#{login}"
      
     # for each admin in the data bag, make a user resource
     # to ensure they exist
     user(login) do
       uid       admin['uid']
       gid       admin['gid']
       shell     admin['shell']
       comment   admin['comment']
   
       home      home
       supports  :manage_home => true
     end
    
   end
    
   # Create an "admins" group on the system
   # You might use this group in the /etc/sudoers file
   # to provide sudo access to the admins
   group "admins" do
     gid     999
     members admins
   end
