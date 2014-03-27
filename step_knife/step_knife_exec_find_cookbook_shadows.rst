.. This is an included how-to. 


To find all of the locations in which cookbooks exist that may shadow each other, create a file called ``shadow-check.rb`` that contains the following |ruby| code:

.. code-block:: ruby

   config = Chef::Config
   
   cookbook_loader = begin
     Chef::Cookbook::FileVendor.on_create { |manifest| Chef::Cookbook::FileSystemFileVendor.new(manifest, config[:cookbook_path]) }
     Chef::CookbookLoader.new(config[:cookbook_path])
   end
   
   ui = Chef::Knife::UI.new($stdout, $stderr, $stdin, {})
   
   cookbook_loader.load_cookbooks
   
   if cookbook_loader.merged_cookbooks.empty?
     ui.msg "cookbooks ok"
   else
     ui.warn "* " * 40
     ui.warn(<<-WARNING)
   The cookbooks: #{cookbook_loader.merged_cookbooks.join(', ')} exist in multiple places in your cookbook_path.
   A composite version of these cookbooks has been compiled for uploading.
   
   #{ui.color('IMPORTANT:', :red, :bold)} In a future version of Chef, this behavior will be removed and you will no longer
   be able to have the same version of a cookbook in multiple places in your cookbook_path.
   WARNING
     ui.warn "The affected cookbooks are located:"
     ui.output ui.format_for_display(cookbook_loader.merged_cookbook_paths)
     ui.warn "* " * 40
   end

Put this file in the directory of your choice. Run the following command:

.. code-block:: bash

   $ knife exec shadow-check.rb

and be sure to edit ``shadow-check.rb`` so that it defines the path to that file correctly.
