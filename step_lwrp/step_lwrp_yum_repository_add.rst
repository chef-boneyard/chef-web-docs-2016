.. This is an included how-to. 

To add a |yum| repository:

.. code-block:: ruby

   yum_repository "zenoss" do
     description "Zenoss Stable repo"
     url "http://dev.zenoss.com/yum/stable/" 
     key "RPM-GPG-KEY-zenoss" 
     action :add 
   end



