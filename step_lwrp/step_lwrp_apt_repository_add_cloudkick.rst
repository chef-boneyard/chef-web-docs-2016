.. This is an included how-to. 

To add |cloudkick|:

.. code-block:: ruby

   apt_repository "cloudkick" do
     uri "http://packages.cloudkick.com/ubuntu"
     distribution node['lsb']['codename']
     components ["main"]
     key "http://packages.cloudkick.com/cloudkick.packages.key"
     action :add
   end
