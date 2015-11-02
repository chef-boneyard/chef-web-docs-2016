.. This is an included how-to. 

.. To filter a list of groups for a specific user:

.. code-block:: ruby

   describe etc_group.where(name: 'my_group') do
     its('users') { should include 'my_user' }
   end
