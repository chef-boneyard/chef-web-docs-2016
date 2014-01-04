.. This is an included how-to. 

.. To add |zenoss|:

.. code-block:: ruby

   apt_repository "zenoss" do
     uri "http://dev.zenoss.org/deb"
     components ["main","stable"]
     action :add
   end
