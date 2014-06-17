.. This is an included how-to. 

.. To create a user with knife user create:

.. code-block:: ruby

   execute 'create_user' do
     command <<-EOM.gsub(/\s+/, ' ').strip!
	   knife user create #{user}
         --admin
         --password password
         --disable-editing
         --file /home/vagrant/.chef/user.pem
         --config /tmp/knife-admin.rb
       EOM
   end
