.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Create lists using arrays:

.. code-block:: ruby

   x = ['a', 'b', 'c']   # => ["a", "b", "c"]
   x[0]                  # => "a" (zero is the first index)
   x.first               # => "a" (see?)
   x.last                # => "c"
   x + ['d']             # => ["a", "b", "c", "d"]
   x                     # => ["a", "b", "c"] ( x is unchanged)
   x = x + ['d']         # => ["a", "b", "c", "d"]
   x                     # => ["a", "b", "c", "d"]
