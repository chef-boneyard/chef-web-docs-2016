.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.
.. This file is hooked into a slide deck


When finished adding the templates and building the custom resource, the cookbook directory structure should look like this:

.. code-block:: text

   /website
     /cookbooks
       /website
         metadata.rb
         /recipes
           default.rb
         README.md
         /resources
           httpd.rb
         /templates
           /default
             httpd.conf.erb
             httpd.service.erb
