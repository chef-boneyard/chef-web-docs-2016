.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This |inspec resource| supports the following options for parsing configuration data. Use them in an ``options`` block stated outside of (and immediately before) the actual test:

.. code-block:: ruby

   options = {
       assignment_re: /^\s*([^:]*?)\s*:\s*(.*?)\s*$/,
       multiple_values: true
     }
   describe parse_config(options) do
     its('setting') { should eq 1 }
   end
