.. This is an included how-to. 

To render a template with global |yum| configuration parameters:

.. code-block:: ruby

   yum_globalconfig '/my/chroot/etc/yum.conf' do
     cachedir '/my/chroot/etc/yum.conf'
     keepcache 'yes'
     debuglevel '2'
     installroot '/my/chroot'
     action :create
   end



