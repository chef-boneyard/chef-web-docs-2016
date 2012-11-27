.. This is an included how-to. 

Example: /etc/apt/sources.list.d/opscode.list (signed repository)

.. code-block:: ruby

   apt_repository "opscode" do
     uri "http://apt.opscode.com"
     distribution node['lsb']['codename'] # or "lucid" if lsb isn't installed :)
     components ["main"]
     key "2940ABA983EF826A"
     keyserver "pgpkeys.mit.edu"
     action :add
   end
