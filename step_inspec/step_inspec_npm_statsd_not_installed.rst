.. This is an included how-to. 

.. To verify that statsd is not installed:

.. code-block:: ruby

   describe npm('statsd') do
     it { should_not be_installed }
   end
