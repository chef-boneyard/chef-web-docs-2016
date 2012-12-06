.. This is an included how-to. 

.. To install a specific architecture:

.. code-block:: ruby

   yum_package "netpbm" do
     arch "i386"
   end

or:

.. code-block:: ruby

   yum_package "netpbm.x86_64"
