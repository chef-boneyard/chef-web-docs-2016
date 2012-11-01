.. This is an included how-to. 

To define the ``check_load`` definition:

.. code-block:: ruby

   nagios_nrpecheck "check_load" do
     command "#{node['nagios']['plugin_dir']}/check_load"
     warning_condition node['nagios']['checks']['load']['warning']
     critical_condition node['nagios']['checks']['load']['critical']
     action :add
   end



