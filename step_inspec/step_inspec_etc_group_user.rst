.. This is an included how-to. 

.. To test all groups to see if a specific user belongs to one (or more) groups:

.. code-block:: ruby

   describe etc_group do
     its('groups') { should include 'my_group' }
   end
