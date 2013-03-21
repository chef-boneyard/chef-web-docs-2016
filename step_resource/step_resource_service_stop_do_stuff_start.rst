.. This is an included how-to. 

The following example shows how to use the |resource execute|, |resource service|, and |resource mount| resources together to ensure that a node running on |amazon ec2| is running |mysql|. This example does the following:

* Checks to see if the |amazon ec2| node has |mysql|
* If the node has |mysql|, stops |mysql|
* Installs |mysql|
* Mounts the node
* Restarts |mysql|

.. code-block:: ruby

   if (node.attribute?('ec2') && ! FileTest.directory?(node['mysql']['ec2_path']))
   
     service "mysql" do
       action :stop
     end
   
     execute "install-mysql" do
       command "mv #{node['mysql']['data_dir']} #{node['mysql']['ec2_path']}"
       not_if do FileTest.directory?(node['mysql']['ec2_path']) end
     end
   
     [node['mysql']['ec2_path'], node['mysql']['data_dir']].each do |dir|
       directory dir do
         owner "mysql"
         group "mysql"
       end
     end
   
     mount node['mysql']['data_dir'] do
       device node['mysql']['ec2_path']
       fstype "none"
       options "bind,rw"
       action [:mount, :enable]
     end
   
     service "mysql" do
       action :start
     end
   
   end

where

* the two ``service`` blocks are used to stop, and then restart the |mysql| service
* the ``execute`` block is used to install |mysql|
* the ``mount`` block is used to mount the node and enable |mysql|

.. note:: This example comes from the ``server_ec2`` recipe in the following cookbook: https://github.com/opscode-cookbooks/mysql.
