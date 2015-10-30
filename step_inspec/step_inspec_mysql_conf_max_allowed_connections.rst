.. This is an included how-to. 

.. To test the maximum number of allowed connections:

.. code-block:: ruby

   describe mysql_conf do
     its('max_connections') { should eq '505' }
     its('max_user_connections') { should eq '500' }
   end
