.. This is an included how-to. 

.. To test if Jinja2 is installed on the system:

.. code-block:: ruby

   describe pip('Jinja2') do
     it { should be_installed }
   end
