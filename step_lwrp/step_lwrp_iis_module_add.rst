.. This is an included how-to. 

To add a module named "My 3rd-party module" to ``mySite``:

.. code-block:: ruby

   iis_module "My 3rd-party module" do
     application "mySite/"
     precondition "bitness64"
     action :add
   end




