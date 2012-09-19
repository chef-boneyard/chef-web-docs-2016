.. This is an included how-to. 

To install a specific version (even if it is older than the version currently installed):

.. code-block:: ruby

   yum_package "tzdata" do
     version "2011b-1.el5"
     allow_downgrade true
   end
