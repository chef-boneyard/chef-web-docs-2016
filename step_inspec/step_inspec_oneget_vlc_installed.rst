.. This is an included how-to. 

.. To test if VLC is installed:

.. code-block:: ruby

   describe package('VLC') do
     it { should be_installed }
   end
