.. This is an included how-to. 

The following example shows how permissions can be set for the ``/certificates`` directory on any node that is running |nginx|. In this example, permissions are being set for the ``owner`` and ``group`` properties as ``root``, and then read/write permissions are granted to the root.

.. code-block:: ruby

   directory "#{node[:nginx][:dir]}/shared/certificates" do
     owner 'root'
     group 'root'
     mode '0700'
     recursive true
   end
