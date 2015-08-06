.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |cookbook chef_client| cookbook can be configured to automatically install and configure gems that are required by a start handler. For example:

.. code-block:: ruby

   node.set['chef_client']['load_gems']['chef-reporting'] = {
     :require_name => 'chef_reporting',
     :action => :install
   }
   
   node.set['chef_client']['start_handlers'] = [
     {
       :class => 'Chef::Reporting::StartHandler',
       :arguments => []
     }
   ]
   
   include_recipe 'chef-client::config'
