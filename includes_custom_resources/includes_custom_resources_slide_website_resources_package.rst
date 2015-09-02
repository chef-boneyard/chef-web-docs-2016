.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.
.. This file is hooked into a slide deck


Use the |resource package| resource to install |httpd|:

.. code-block:: ruby

   package 'httpd' do
     action :install
   end
