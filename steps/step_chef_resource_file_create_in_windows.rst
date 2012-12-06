.. This is an included how-to. 

.. To create a file in |windows|:

.. code-block:: ruby

   file "C:\tmp\something.txt" do
     rights :read, "Everyone"
     rights :full_control, "DOMAIN\User"
     action :create
   end
