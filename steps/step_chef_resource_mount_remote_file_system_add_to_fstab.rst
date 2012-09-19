.. This is an included how-to. 

To mount a remote file system and add to fstab:

.. code-block:: ruby

   mount "/export/www" do
     device "nas1prod:/export/web_sites"
     fstype "nfs"
     options "rw"
     action [:mount, :enable]
   end
