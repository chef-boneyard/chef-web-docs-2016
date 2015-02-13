.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Convert something to either true or false (``!!`` means not not!!):

.. code-block:: ruby

   !!true          # => true
   !!false         # => false
   !!nil           # => false (when pressed, nil is false)
   !!0             # => true (zero is NOT false).
