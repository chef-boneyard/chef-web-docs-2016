.. This is an included how-to. 

.. To test for PostgreSQL database running a RC, development, or beta release:

.. code-block:: ruby

   describe command('sudo -i psql -V') do
     its('stdout') { should_not eq '/RC/' }
     its('stdout') { should_not eq '/DEVEL/' }
     its('stdout') { should_not eq '/BETA/' }
   end
