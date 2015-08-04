.. This is an included how-to. 

Use the ``imports`` property to import resources from a module:

.. code-block:: ruby

   dsc_script 'RDP' do
     imports 'cRDPEnabled', 'PSHOrg_cRDPEnabled'
     code <<-EOH
     cRDPEnabled "enablerdp"
       {
         Enabled = $True
       }
      EOH
   end
