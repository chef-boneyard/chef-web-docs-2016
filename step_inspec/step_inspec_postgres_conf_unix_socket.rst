.. This is an included how-to. 

.. To test the Unix socket settings:

.. code-block:: ruby

   describe postgres_conf do
     its('unix_socket_directories') { should eq '.s.PGSQL.5432' }
     its('unix_socket_group') { should eq nil }
     its('unix_socket_permissions') { should eq '0770' }
   end

where ``unix_socket_group`` is set to the |postgresql| default setting (the group to which the server user belongs).
