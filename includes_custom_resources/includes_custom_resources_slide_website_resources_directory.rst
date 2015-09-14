.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.
.. This file is hooked into a slide deck


Use the |resource directory| resource to create the ``/var/www/vhosts`` directory on the node:

.. code-block:: ruby

   directory "/var/www/vhosts/#{instance_name}" do
     recursive true
     owner 'root'
     group 'root'
     mode '0755'
     action :create
   end
