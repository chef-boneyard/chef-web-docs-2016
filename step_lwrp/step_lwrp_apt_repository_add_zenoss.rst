.. This is an included how-to. 

Example: /etc/apt/sources.list.d/zenoss.list

.. code-block:: ruby

   apt_repository "zenoss" do
     uri "http://dev.zenoss.org/deb"
     components ["main","stable"]
     action :add
   end
