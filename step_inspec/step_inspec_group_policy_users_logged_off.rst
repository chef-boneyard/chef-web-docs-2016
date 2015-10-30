.. This is an included how-to. 

.. To test if users are logged off after the logon time expires:

.. code-block:: ruby

   describe group_policy('Local Policies\Security Options') do
     its('Automatically log off users when the logon time expires') { should eq 'Enabled' }
   end
