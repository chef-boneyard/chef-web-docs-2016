.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use the ``then`` statement to specify what to do when a rule in the ``when`` statement is matched. For example:

.. code-block:: ruby

   rule on action when
     data.name='app1'
   then
     set(#foo, '100')  
   end

When the name matches ``app1``, ``#foo`` will be set to ``100``.
