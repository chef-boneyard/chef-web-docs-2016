.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Any resource that passes a string command may also specify which resource will be used to evaluate the command (by using the ``guard_intrepreter`` property). For example, to evaluate a command using the |resource script_perl| resource:

.. code-block:: ruby

   resource 'name' do
     guard_interpreter :perl
     # code
   end
