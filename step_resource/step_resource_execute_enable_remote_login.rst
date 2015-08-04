.. This is an included how-to. 

.. To enable remote login on |mac os x|:

.. code-block:: ruby

   execute 'enable ssh' do 
     command '/usr/sbin/systemsetup -setremotelogin on'
     not_if '/usr/sbin/systemsetup -getremotelogin | /usr/bin/grep On'
     action :run
   end
