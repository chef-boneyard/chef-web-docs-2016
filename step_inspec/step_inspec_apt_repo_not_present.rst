.. This is an included how-to. 

.. To verify that a repository is not present:

.. code-block:: ruby

   describe apt('ubuntu-wine/ppa') do
     it { should_not exist }
     it { should_not be_enabled }
   end
