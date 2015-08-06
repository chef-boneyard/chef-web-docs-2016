.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The following custom handler defines how cookbooks and cookbook versions that are used during the |chef client| run will be compiled into a report using the ``Chef::Log`` class in the |chef client|:

.. code-block:: ruby

   require 'chef/log'
   
   module Opscode
     class CookbookVersionsHandler < Chef::Handler
   
       def report
         cookbooks = run_context.cookbook_collection
         Chef::Log.info('Cookbooks and versions run: #{cookbooks.keys.map {|x| cookbooks[x].name.to_s + ' ' + cookbooks[x].version} }')
       end
     end
   end
