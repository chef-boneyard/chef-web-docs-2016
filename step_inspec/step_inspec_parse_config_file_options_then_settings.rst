.. This is an included how-to. 

.. To use options, and then test a configuration setting:

.. code-block:: ruby

   describe parse_config_file('/path/to/file.conf', { multiple_values: true }) do
    its('PARAM_X') { should include 'Y' }
   end
