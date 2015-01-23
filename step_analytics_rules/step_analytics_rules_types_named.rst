.. This is an included how-to. 


A named rule:

.. code-block:: ruby

   rule "name" on action
   when
     organization_name = "ponyville"
   then
     set(#foo, "100")  
   end
