.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


.. code-block:: ruby

   changed_cookbooks.each do |cookbook|
     execute "unit_rspec_#{cookbook[:name]}" do
       cwd cookbook[:path]
       command "rspec --format documentation --color"
       only_if { has_spec_tests?(cookbook[:path]) }
     end
   end
