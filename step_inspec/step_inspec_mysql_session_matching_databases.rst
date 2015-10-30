.. This is an included how-to. 

.. To test for matching databases:

.. code-block:: ruby

   sql = mysql_session('my_user','password')

   sql.describe('show databases like \'test\';') do
     its(:stdout) { should_not match(/test/) }
   end
