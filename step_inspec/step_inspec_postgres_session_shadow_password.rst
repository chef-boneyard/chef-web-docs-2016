.. This is an included how-to. 

.. To test the PostgreSQL shadow password:

.. code-block:: ruby

   sql = postgres_session('my_user', 'password')

   describe sql.query('SELECT * FROM pg_shadow WHERE passwd IS NULL;') do
     its('output') { should eq('') }
   end
