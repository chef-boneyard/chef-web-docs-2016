.. This is an included how-to. 

.. To test for risky database entries:

.. code-block:: ruby

   sql = postgres_session('my_user', 'password')

   describe sql.query('SELECT count (*)
                 FROM pg_language
                 WHERE lanpltrusted = 'f'
                 AND lanname!='internal'
                 AND lanname!='c';') do
     its('output') { should eq(/^0/) }
   end

