.. This is an included how-to. 

Using ``ignore_failure``:

.. code-block:: ruby

   gem_package "syntax" do
     action :install
     ignore_failure true
   end

