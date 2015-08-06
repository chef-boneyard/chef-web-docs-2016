.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use a comment to document the behavior of the rules. A comment starts with a double forward slash---``//``---and continues to the end of the line on which the comment started. For example:

.. code-block:: ruby

   rules 'user-agent matching'
     rule on action
     when
       // this rule always matches
       true
     then
       // raise an audit for every action
       ':info('This rule matches all actions')
     end
   end
