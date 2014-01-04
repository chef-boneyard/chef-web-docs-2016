.. This is an included how-to. 

.. To remove the "base-devel" group:

.. code-block:: ruby

   pacman_group "base-devel" do
     action :remove
   end
