.. This is an included how-to. 

.. To test umask setting:

.. code-block:: ruby

   describe login_def do
     its('UMASK') { should eq '077' }
   end
