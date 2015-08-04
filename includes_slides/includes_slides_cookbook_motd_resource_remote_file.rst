.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.


Use the |resource remote_file| resource when a file is stored at a remote location, such as on the web:

.. code-block:: ruby
       
   file '/etc/motd' do
     url 'http://some.where.com/motd'
     action :create
     mode '0644'
     owner 'root'
     group 'root'
   end
