.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.
.. This file is hooked into a slide deck


``httpd.conf.erb`` stores information about the website and is typically located under the ``/etc/httpd``:

.. code-block:: ruby

   ServerRoot "/etc/httpd"
   Listen <%= @port %>
   Include conf.modules.d/*.conf
   User apache
   Group apache
   <Directory />
     AllowOverride none
     Require all denied
   </Directory>
   DocumentRoot "/var/www/vhosts/<%= @instance_name %>"
   <IfModule mime_module> 
     TypesConfig /etc/mime.types
   </IfModule>

Copy it as shown, add it under ``/templates/default``, and then name the file ``httpd.conf.erb``.
