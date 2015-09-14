.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.
.. This file is hooked into a slide deck


Use the |resource service| resource to enable, and then start the service:

.. code-block:: ruby

   service "httpd-#{instance_name}" do
     action [:enable, :start]
   end
