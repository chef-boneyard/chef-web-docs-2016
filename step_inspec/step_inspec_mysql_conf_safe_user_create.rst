.. This is an included how-to. 

.. To test the safe-user-create parameter:

.. code-block:: ruby

   describe mysql_conf.params('mysqld') do
     its('safe-user-create') { should eq('1') }
   end
