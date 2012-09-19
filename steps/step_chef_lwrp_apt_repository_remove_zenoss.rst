.. This is an included how-to. 

Example: Remove /etc/apt/sources.list.d/zenoss.list

.. code-block:: ruby

   apt_repository "zenoss" do
     action :remove
   end
