.. This is an included how-to. 

.. To test the port and socket on which MySQL listens:

.. code-block:: ruby

   describe mysql_conf do
     its('port') { should eq '3306' }
     its('socket') { should eq '/var/run/mysqld/mysql.sock' }
   end
