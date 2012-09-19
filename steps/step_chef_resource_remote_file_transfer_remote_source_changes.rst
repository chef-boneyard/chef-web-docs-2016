.. This is an included how-to. 

To transfer a file only if the remote source has changed (using the ``http_request`` resource):

.. code-block:: ruby

   remote_file "/tmp/couch.png" do
     source "http://couchdb.apache.org/img/sketch.png"
     action :nothing
   end
   
   http_request "HEAD #{http://couchdb.apache.org/img/sketch.png}" do
     message ""
     url http://couchdb.apache.org/img/sketch.png
     action :head
     if File.exists?("/tmp/couch.png")
       headers "If-Modified-Since" => File.mtime("/tmp/couch.png").httpdate
     end
     notifies :create, resources(:remote_file => "/tmp/couch.png"), :immediately
   end
