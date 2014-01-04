.. This is an included how-to. 

.. To load an array of commands from a node:

.. code-block:: ruby

   cfg_cmds = node['iis']['cfg_cmd']
   cfg_cmds.each do |cmd|
     iis_config "#{cmd}" do
        action :config
     end
   end



