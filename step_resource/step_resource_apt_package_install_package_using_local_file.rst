.. This is an included how-to. 

.. To install a package using local file:

.. code-block:: ruby 

   apt__package "jwhois" do    
     action :install
    source '/path/to/jwhois.deb'
   end   
