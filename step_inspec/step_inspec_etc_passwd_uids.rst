.. This is an included how-to. 

.. To test usernames and UIDs:

.. code-block:: ruby

   describe passwd do
     its('usernames') { should eq ['root', 'www-data'] }
     its('uids') { should eq [0, 33] }
   end
