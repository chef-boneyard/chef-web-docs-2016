.. This is an included how-to. 

A loop statement is used to execute a block of code one (or more) times. A loop statement is created when ``.each`` is added to an expression that defines an array or a hash. An array is an integer-indexed collection of objects. Each element in an array can be associated with and referred to by an index.

To loop over an array of package names by platform:

.. code-block:: ruby

   ["apache2", "apache2-mpm"].each do |p|
     package p
   end







