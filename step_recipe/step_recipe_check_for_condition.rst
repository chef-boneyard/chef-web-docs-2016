.. This is an included how-to. 

An if expression can be used to check for conditions (true or false).

To check for condition only for |debian| and |ubuntu| platforms:

.. code-block:: ruby

   if platform?("debian", "ubuntu")
     # do something if node[‘platform’] is debian or ubuntu
   else
     # do other stuff
   end
