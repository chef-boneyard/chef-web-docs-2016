.. This is an included how-to. 

.. To test umask settings:

.. code-block:: ruby

   describe login_def do
     its('UMASK') { should eq '077' }
     its('PASS_MAX_DAYS') { should eq '90' }
   end
