.. This is an included how-to. 

To create a directory recursively:

.. code-block:: ruby

   %w{dir1 dir2 dir3}.each do |dir|
     directory "/tmp/mydirs/#{dir}" do
       mode "0775"
       owner "root"
       group "root"
       action :create
       recursive true
     end
   end
