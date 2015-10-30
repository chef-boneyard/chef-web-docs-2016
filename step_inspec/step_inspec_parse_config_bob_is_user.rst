.. This is an included how-to. 

.. To test that bob is a user:

.. code-block:: ruby

   describe parse_config(data, { multiple_values: true }) do
     its('users') { should include 'bob'}
   end
