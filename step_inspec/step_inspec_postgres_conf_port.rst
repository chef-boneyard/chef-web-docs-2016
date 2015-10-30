.. This is an included how-to. 

.. To test the port on which PostgreSQL listens:

.. code-block:: ruby

   describe postgres_conf do
     its('port') { should eq '5432' }
   end
