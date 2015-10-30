.. This is an included how-to. 

.. To test a configuration setting:

.. code-block:: ruby

   describe parse_config_file('/path/to/file.conf') do
    its('PARAM_X') { should eq 'Y' }
   end
