.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Work with basic untruths (``!`` means not!):

.. code-block:: ruby

   !true           # => false
   !false          # => true
   !nil            # => true
   1 != 2          # => true (1 is not equal to 2)
   1 != 1          # => false (1 is not not equal to itself)
