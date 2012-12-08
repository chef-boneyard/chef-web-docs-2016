.. This is an included how-to. 

.. To use the |git| mirror:

.. code-block:: ruby

   git "/opt/mysources/couch" do
     repository "git://git.apache.org/couchdb.git"
     reference "master"
     action :sync
   end
