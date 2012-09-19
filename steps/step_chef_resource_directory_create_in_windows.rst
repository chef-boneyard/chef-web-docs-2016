.. This is an included how-to. 

To create a directory in |windows|:

.. code-block:: ruby

   directory "C:\tmp\something.txt" do
     rights :full_control, "DOMAIN\User"
     inherits false
     action :create
   end
