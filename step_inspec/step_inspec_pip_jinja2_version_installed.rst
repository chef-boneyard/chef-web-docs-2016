.. This is an included how-to. 

.. To test if Jinja2 2.8 is installed on the system:

.. code-block:: ruby

   describe pip('Jinja2') do
     it { should be_installed }
     its('version') { should eq '2.8' }
   end
