.. This is an included how-to. 

.. To set up logging:

.. code-block:: ruby

   iis_config "/section:system.applicationHost/sites/siteDefaults.logfile.directory:"D:\\logs"" do
     action :config
   end



