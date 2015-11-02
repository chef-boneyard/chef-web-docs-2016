.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A ``mysql_session`` |inspec resource| block declares the username and password to use for the session, and then the command to be run:

.. code-block:: ruby

   describe mysql_session('username', 'password').query('QUERY') do
     its('output') { should eq('') }
   end

where

* ``mysql_session`` declares a username and password with permission to run the query
* ``query('QUERY')`` contains the query to be run
* ``its('output') { should eq('') }`` compares the results of the query against the expected result in the test
