.. This is an included how-to. 

.. To get the latest version of |couch db|:

.. code-block:: ruby

   grab_couchdb_from_svn
   subversion "CouchDB Edge" do
     repository "http://svn.apache.org/repos/asf/couchdb/trunk"
     revision "HEAD"
     destination "/opt/mysources/couch"
     action :sync
   end
