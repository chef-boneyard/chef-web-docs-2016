.. This is an included how-to. 

To create a record, with authentication credentials as node attributes:

.. code-block:: ruby

   dynect_rr "webprod" do
     record_type "A"
     rdata({"address" => "10.1.1.10"})
     fqdn "webprod.example.com"
     customer node[:dynect][:customer]
     username node[:dynect][:username]
     password node[:dynect][:password]
     zone     node[:dynect][:zone]
   end
