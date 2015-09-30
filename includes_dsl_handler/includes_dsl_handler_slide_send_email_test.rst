.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use the following code block to trigger the exception and have the |chef client| send email to the specified email address:

.. code-block:: ruby

   ruby_block 'fail the run' do
     block do
       fail 'deliberately fail the run'
     end
   end
