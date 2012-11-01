.. This is an included how-to. 

To remove a |yum| |gnupg| key:

.. code-block:: ruby

   yum_key "RPM-GPG-KEY-zenoss" do 
     action :remove 
   end



