.. This is an included how-to. 

.. To test group identifiers (GIDs) for duplicates:

.. code-block:: ruby

   describe etc_group do
     its('gids') { should_not contain_duplicates }
   end
