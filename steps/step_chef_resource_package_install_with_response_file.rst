.. This is an included how-to. 

Use of a ``response_file`` is only supported on |debian| and |ubuntu| at this time. Providers need to be written to support the use of a ``response_file``, which contains debconf answers to questions normally asked by the package manager on installation. Put the file in files/default of the cookbook where the package is specified and |chef| will use the |resource cookbook file| resource to retrieve it.

To install a package with a response_file

.. code-block:: ruby

   package "sun-java6-jdk" do
     response_file "java.seed"
   end
