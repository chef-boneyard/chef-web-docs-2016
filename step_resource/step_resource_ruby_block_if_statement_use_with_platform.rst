.. This is an included how-to. 

The following example shows how an if statement can be used with the ``platform?`` method in the |dsl recipe| to run code specific to |windows|. The code is defined using the |resource ruby_block| resource:

.. code-block:: ruby

   # the following code sample comes from the ``client`` recipe
   # in the following cookbook: https://github.com/chef-cookbooks/mysql

   if platform?('windows')
     ruby_block 'copy libmysql.dll into ruby path' do
       block do
         require 'fileutils'
         FileUtils.cp "#{node['mysql']['client']['lib_dir']}\\libmysql.dll", 
           node['mysql']['client']['ruby_dir']
       end
       not_if { File.exist?("#{node['mysql']['client']['ruby_dir']}\\libmysql.dll") }
     end
   end
