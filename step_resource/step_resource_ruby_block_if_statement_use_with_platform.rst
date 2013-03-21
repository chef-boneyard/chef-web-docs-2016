.. This is an included how-to. 

The following example shows how to an ``if`` statement can be used with the ``platform?`` method in the recipe DSL to run code specific to |windows|. The code is defined using the |resource ruby block| resource:

.. code-block:: ruby

   if platform? 'windows'
     ruby_block "copy libmysql.dll into ruby path" do
       block do
         require 'fileutils'
         FileUtils.cp "#{node['mysql']['client']['lib_dir']}\\libmysql.dll", 
           node['mysql']['client']['ruby_dir']
       end
       not_if { File.exist?("#{node['mysql']['client']['ruby_dir']}\\libmysql.dll") }
     end
   end

.. note:: This example comes from the ``client`` recipe in the following cookbook: https://github.com/opscode-cookbooks/mysql.
