.. This is an included how-to. 

To add a |yum| |gnupg| key:

.. code-block:: ruby

   yum_key "RPM-GPG-KEY-zenoss" do 
     url "http://dev.zenoss.com/yum/RPM-GPG-KEY-zenoss" 
     action :add 
   end



