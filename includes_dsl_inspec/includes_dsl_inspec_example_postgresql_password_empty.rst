.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The following test shows how to audit machines running |postgresql| to ensure that passwords are not empty. 

.. code-block:: ruby

   rule 'postgres-7' do
     impact 1.0
     title 'Don't allow empty passwords'
     desc '
       ...
     '
     sql.describe("SELECT * FROM pg_shadow WHERE passwd IS NULL;") do
       its('output') { should eq('') }
     end
   end
