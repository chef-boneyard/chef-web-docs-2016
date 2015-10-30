.. This is an included how-to. 

.. To test if the yum repo exists:

.. code-block:: ruby

   describe yum do
     its('repos') { should exist }
   end
