.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


.. code-block:: ruby

   changed_cookbooks.each do |cookbook|
     unless bumped_version?(cookbook[:path])
       raise DeliveryTruck::Error, "The #{cookbook[:name]} cookbook was modified " \
                                   "but the version was not updated in the " \
                                   "metadata file."
     end
   
     execute "syntax_check_#{cookbook[:name]}" do
       command "knife cookbook test -o #{cookbook[:path]} -a"
     end
   end
