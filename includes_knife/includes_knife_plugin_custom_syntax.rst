.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


There are many ways to structure a |knife| plugin. The best way to determine if a different structure is needed is to look at the other |knife| plugins. The following syntax shows how a typical |knife| plugin is structured:

.. code-block:: ruby

   require 'chef/knife'
   # other require attributes, as needed
   
   module ModuleName
     class SubclassName < Chef::Knife
   
     deps do
       require 'chef/dependency'
       # other dependencies, as needed
     end

     banner "knife subcommand argument VALUE (options)"
   
     option :name_of_option,
       :short => "-l VALUE",
       :long => "--long-option-name VALUE",
       :description => "The description for the option.",
       :boolean => true | false
       :default => default_value
   
     def run
       # Ruby code goes here
     end
   end

where:

* ``require`` identifies any other |knife| subcommands and/or |knife| plugins required by this plugin
* ``module ModuleName`` declares the |knife| plugin as its own namespace
* ``class SubclassName < Chef::Knife`` declares the plugin as a subclass of both |knife| and |chef|. The capitalization of this name is important. For example, ``SubclassName`` would have a |knife| command of ``knife subclass name``, whereas ``Subclassname`` would have a |knife| command of ``knife subclassname``
* ``deps do`` is a list of dependencies
* ``banner "knife subcommand argument VALUE (options)"`` is displayed when a user enters ``knife subclassName --help``
* ``option :name_of_option`` defines each of the options that are available for this plugin
* ``:short`` defines the short option name
* ``:long`` defines the long option name
* ``:description`` defines a description that is displayed when a user enters ``knife subclassName --help``
* ``:boolean`` defines whether the option is ``true`` or ``false``; if the ``:short`` and ``:long`` names define a ``VALUE``, then this attribute must not be used
* ``:default`` defines a default value
* ``def run`` is the |ruby| code that is executed when the command is run

The following example shows part of a |knife| plugin named ``knife audit``:

.. code-block:: ruby

   require 'chef/knife'
 
   module KnifeAudit
     class Audit < Chef::Knife
   
       deps do
         require 'chef/cookbook_loader'
         require 'chef/environment'
         require 'chef/node'
         require 'chef/run_list'
         require 'chef/json_compat' 
         require 'chef/shef/ext'
       end
   
       banner "knife audit <COOKBOOK COOKBOOK ...>"
   
       option :show_nodelist,
         :short => "-s",
         :long => "--show-nodelist",
         :description => "Show all nodes running each cookbook"
   
       option :all_cookbooks,
         :short => "-a",
         :long => "--all-cookbooks",
         :description => "Show all cookbook references"
   
       option :totals,
         :short => "-t",
         :long => "--totals",
         :description => "Show cookbook count totals for all node types"
   
       option :install_cookbook,
         :short => "-i",
         :long => "--install-cookbook",
         :description => "Install knife_audit helper cookbook into current cookbook directory"
   
       def run
   
         if @name_args.empty? 
           display_cookbooks = {}
         else
           display_cookbooks = @name_args 
         end
   
         self.config = Chef::Config.merge!(config)
   
         if config[:install_cookbook]
   
           unless config[:cookbook_path]
             ui.msg("No path set in config.rb, cannot install cookbook.")
             return
           end
        
           source_path = File.dirname(__FILE__) + "/knife_audit_cookbook"
           dest_path = config[:cookbook_path].first + "/knife_audit"
   
           if File.exist?(dest_path)
             ui.msg("knife_audit cookbook already present in #{config[:cookbook_path].first}")
           else
             FileUtils.copy_entry(source_path, dest_path)
             ui.msg("knife-audit cookbook copied to #{config[:cookbook_path].first}")
           end
   
           return
         end
       end
   
       ... # several other def run blocks
   
     end #class end
   
   end #module end

Take a look at all of the code for this plugin on |github|: https://github.com/jbz/knife-audit/blob/master/lib/chef/knife/audit.rb.
