.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Work with basic truths:

.. code-block:: ruby

   true            # => true
   false           # => false
   nil             # => nil
   0               # => true ( the only false values in Ruby are false
                   #    and nil; in other words: if it exists in Ruby,
                        even if it exists as zero, then it is true.)
   1 == 1          # => true ( == tests for equality )
   1 == true       # => false ( == tests for equality )
