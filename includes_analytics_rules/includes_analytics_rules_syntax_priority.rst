.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use the ``with priority`` statement to specify a positive or negative integer that defines the relative priority of a rules group as compared to all other rules groups. For example:

.. code-block:: ruby

   rules 'rule name'
     with priority=100
       rule on action ...
     ...
   end

A rules group with a higher integer value will have priority over any rules groups with lower integer values.
