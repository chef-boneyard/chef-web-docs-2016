.. This is an included how-to. 


An unnamed rule:

.. code-block:: ruby

   rule on action when
     data.name="app1"
   then
     set(#foo, "100")  
   end
