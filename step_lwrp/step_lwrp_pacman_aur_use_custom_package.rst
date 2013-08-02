.. This is an included how-to. 

To use a custom package with PKGBUILD:

.. code-block:: ruby

   pacman_aur "netatalk" do
     pkgbuild_src "PKGBUILD"
     action [:build,:install]
   end
