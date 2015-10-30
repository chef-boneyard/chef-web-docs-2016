.. This is an included how-to. 

.. To test SSH configuration settings:

.. code-block:: ruby

   describe ssh_config do
     its('cipher') { should eq '3des' }
     its('port') { should '22' }
     its('hostname') { should include('example.com') }
   end
