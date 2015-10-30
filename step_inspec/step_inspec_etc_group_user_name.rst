.. This is an included how-to. 

.. To test all groups for a specific user name:

.. code-block:: ruby

   describe etc_group.where(name: 'my_user') do
     its('users') { should include 'my_user' }
   end
