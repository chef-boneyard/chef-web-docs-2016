.. This is an included how-to. 

.. To create a system user:

.. code-block:: ruby

   user "systemguy" do
     comment "system guy"
     system true
     shell "/bin/false"
   end
