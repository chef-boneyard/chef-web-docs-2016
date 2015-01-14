.. This is an included how-to. 

A package that is not installed:

.. code-block:: ruby

   control_group "audit name" do
     control "postgres package" do
       it "should not be installed" do
         expect(package("postgresql")).to_not be_installed
       end
     end
   end
