.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The cookbook_file resource defines a file distribution. For example, the following cookbook_file details::

   cookbook_file "/usr/local/bin/apache2_module_conf_generate.pl" do
     source "apache2_module_conf_generate.pl"
     mode 0755
     owner "root"
     group "root"
   end

would create the ``/usr/local/bin/apache2_module_conf_generate.pl`` from the ``apache2_module_conf_generate.pl`` file contained in the cookbook that is most specific to the node that is executing the recipe. 

**jamescott: there is some mumbo jumbo about a "By default, the file specificity requirements are obtained from the ``remote_url`` setting in the configuration file on the |chef client|." but (as far as I can tell) there is no ``remote_url`` setting in any of the configuration files.**

