.. This is an included how-to. 

To download an XML file and then add the "symfony" channel:

.. code-block:: ruby

   remote_file "#{Chef::Config[:file_cache_path]}/symfony-channel.xml" do
     source "http://pear.symfony-project.com/channel.xml"
     mode 0644
   end
   
   php_pear_channel "symfony" do
     channel_xml "#{Chef::Config[:file_cache_path]}/symfony-channel.xml"
     action :add
   end
