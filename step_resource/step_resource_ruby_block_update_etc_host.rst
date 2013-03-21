.. This is an included how-to. 

The following example shows how the |resource ruby block| resource can be used to update the ``/etc/hosts`` file:

.. code-block:: ruby

   ruby_block "edit etc hosts" do
     block do
       rc = Chef::Util::FileEdit.new("/etc/hosts")
       rc.search_file_replace_line(/^127\.0\.0\.1 localhost$/, 
          "127.0.0.1 #{new_fqdn} #{new_hostname} localhost")
       rc.write_file
     end
   end

.. note:: This example comes from the ``ec2`` recipe in the following cookbook: https://github.com/opscode-cookbooks/dynect.
