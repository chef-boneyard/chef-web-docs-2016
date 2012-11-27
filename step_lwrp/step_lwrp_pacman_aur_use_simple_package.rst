.. This is an included how-to. 

To use a simple AUR package

.. code-block:: ruby

   pacman_aur "djbdns" do
     action [:build, :install]
   end
