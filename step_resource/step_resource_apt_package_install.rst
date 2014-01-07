.. This is an included how-to. 

.. To install a package using package manager:

.. code-block:: ruby

   apt_package "name of package" do
     action :install
   end

.. To install a package using local file:

.. code-block:: ruby 

   apt__package "jwhois" do    
     action :install
    source '/path/to/jwhois.deb'
   end   
