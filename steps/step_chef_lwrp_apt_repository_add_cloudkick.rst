.. This is an included how-to. 

Example: /etc/apt/sources.list.d/cloudkick.list (signed repository)

.. code-block:: ruby

   apt_repository "cloudkick" do
     uri "http://packages.cloudkick.com/ubuntu"
     distribution node['lsb']['codename']
     components ["main"]
     key "http://packages.cloudkick.com/cloudkick.packages.key"
     action :add
   end
