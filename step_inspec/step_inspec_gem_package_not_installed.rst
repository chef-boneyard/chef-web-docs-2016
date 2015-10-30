.. This is an included how-to. 

.. To verify that a gem package is not installed:

.. code-block:: ruby

   describe gem('rubocop') do
     it { should_not be_installed }
   end
