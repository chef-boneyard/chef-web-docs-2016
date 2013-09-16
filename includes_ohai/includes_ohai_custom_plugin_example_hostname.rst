.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The following |ohai| plugin collects the hostname for any operating system:

.. code-block:: ruby

   Ohai.plugin do
     provides "fqdn", "domain"
   
     depends_os "hostname"
   
     collect_data do
       # Domain is everything after the first dot
       if fqdn
         fqdn =~ /.+?\.(.*)/
         domain $1 
       end
     end
   end

