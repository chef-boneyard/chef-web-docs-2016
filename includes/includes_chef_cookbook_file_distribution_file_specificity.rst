.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

**jamescott: I found this section a tad confusing on the Wiki -- the verbiage didn't make sense, so I rewrote it to "make sense" which means that this section should be reviewed carefully by someone who actually understands it, in case I misunderstood the point I thought the article was trying to make.**

A cookbook will frequently be designed to work across many platforms and will often be required to distribute a specific file to a specific platform. A cookbook can be designed to support distributing files across platforms, but ensuring that the right file ends up on each system. For example, a cookbook may have a directory structure like this::

   files/
      host-foo.example.com
      ubuntu-8.04
      ubuntu-8
      ubuntu
      default

and a cookbook_file resource like this::

   cookbook_file "/usr/local/bin/apache2_module_conf_generate.pl" do
     source "apache2_module_conf_generate.pl"
     mode 0755
     owner "root"
     group "root"
   end

would be matched in the same order as the cookbook directory structure. For a node named "foo.example.com" that is running |ubuntu| 8.04, then the second item would be the matching item and the location to which the file identified in the cookbook_resource would be distributed::

   host-foo.example.com/apache2_module_conf_generate.pl
   ubuntu-8.04/apache2_module_conf_generate.pl
   ubuntu-8/apache2_module_conf_generate.pl
   ubuntu/apache2_module_conf_generate.pl
   default/apache2_module_conf_generate.pl

If the ``apache_module_conf_generate.pl`` file was located in the cookbook directory under ``files/host-foo.example.com/`` then the specified file(s) would only be copied to the machine with the domain name foo.example.com.

**jamescott: THE SECTION IMMEDIATELY BELOW MAKES SENSE, BUT DOESN'T MAKE SENSE. COME BACK TO THIS ONE**

So, the rule distilled:

1. host-node[:fqdn]
2. node[:platform]-node[:version]
3. node[:platform]-version_components: The version string is split on decimals and searched from greatest specificity to least; for example, if the location from the last rule was centos-5.7.1, then centos-5.7 and centos-5 would also be searched.
4. node[:platform]
5. default

