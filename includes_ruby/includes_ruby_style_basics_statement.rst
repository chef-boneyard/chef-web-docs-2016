.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use conditions! For example, an ``if`` statement

.. code-block:: ruby

   if false
     # this won't happen
   elsif nil
     # this won't either
   else
     # code here will run though
   end

or a ``case`` statement:

.. code-block:: ruby

   x = 'dog'
   case x
   when 'fish'
    # this won't happen
   when 'dog', 'cat', 'monkey'
     # this will run
   else
     # the else is an optional catch-all
   end
