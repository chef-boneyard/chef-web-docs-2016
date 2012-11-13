.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |resource cookbook file| resource defines a file distribution. For example, the following |resource cookbook file| details::

   cookbook_file "/usr/local/bin/apache2_module_conf_generate.pl" do
     source "apache2_module_conf_generate.pl"
     mode 0755
     owner "root"
     group "root"
   end

would create the ``/usr/local/bin/apache2_module_conf_generate.pl`` from the ``apache2_module_conf_generate.pl`` file contained in the cookbook that is most specific to the node that is executing the recipe.