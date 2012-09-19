.. This is an included how-to. 

Example: /etc/apt/sources.list.d/opscode.list (signed repository) v2

.. code-block:: ruby

   apt_repository "opscode" do
     uri "http://apt.opscode.com"
     distribution node['lsb']['codename'] # or "lucid" if lsb isn't installed :)
     components ["main"]
     key "http://apt.opscode.com/packages@opscode.com.gpg.key"
     action :add
   end
