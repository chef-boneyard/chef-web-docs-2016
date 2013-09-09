.. This is an included how-to. 


To use a ``case`` statement to apply different values based on whether the setting 
exists on the front-end or back-end server, add code similar to the following to the |enterprise rb| file:

.. code-block:: ruby

   role_name = PrivateChef["servers"][node['fqdn']]["role"]
   case role_name
   when "backend"
     # backend-specific configuration here
   when "frontend"
     # frontend-specific configuration here
   end
