.. This is an included how-to. 

.. To test usernames and UIDs:

.. code-block:: ruby

   describe passwd do
     its('usernames') { should eq 'root' }
     its('uids') { should eq 1 }
   end
