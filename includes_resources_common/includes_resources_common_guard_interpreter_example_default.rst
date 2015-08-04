.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


For example, the following code block will ensure the command is evaluated using the default intepreter as identified by the |chef client|:

.. code-block:: ruby

   resource 'name' do
     guard_interpreter :default
     # code
   end
