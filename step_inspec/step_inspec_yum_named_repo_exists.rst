.. This is an included how-to. 

.. To test if a specific yum repo exists:

.. code-block:: ruby

   describe yum.repo('epel') do
     it { should exist }
     it { should be_enabled }
   end
