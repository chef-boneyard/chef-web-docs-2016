.. This is an included how-to. 

.. To test the PATH environment variable:

.. code-block:: ruby

   describe os_env('PATH') do
     its('split') { should_not include('') }
     its('split') { should_not include('.') }
   end
