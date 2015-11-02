.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The following test shows how to audit machines running |mysql| to ensure that passwords are not stored in ``ENV``:

.. code-block:: ruby

   control 'mysql-3' do
     impact 1.0
     title 'Do not store your MySQL password in your ENV'
     desc '
       Storing credentials in your ENV may easily expose
       them to an attacker. Prevent this at all costs.
     '
     describe command('env') do
       its(:stdout) { should_not match(/^MYSQL_PWD=/) }
     end
   end
