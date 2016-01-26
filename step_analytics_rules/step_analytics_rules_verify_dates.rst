.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following rule checks the day of the week on which an action runs:

.. code-block:: ruby

   rules "Check deploy day of week"
     rule "my rule" on action
     when
       // DAY_OF_WEEK uses 1 -> 7 for Monday -> Sunday
       datetime:component(recorded_at, "DAY_OF_WEEK") >= 5
     then
       // set a user defined value
       set(#alert, 'action detected on a Friday, Saturday, or Sunday'), 
     end
   end
